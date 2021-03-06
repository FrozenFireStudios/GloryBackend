import 'package:glory_backend/glory_backend.dart';
import 'package:aqueduct/test.dart';

export 'package:glory_backend/glory_backend.dart';
export 'package:aqueduct/test.dart';
export 'package:test/test.dart';
export 'package:aqueduct/aqueduct.dart';

/// A testing harness for glory_backend.
///
/// Use instances of this class to start/stop the test glory_backend server. Use [client] to execute
/// requests against the test server. This instance will create a temporary version of your
/// code's current database schema during startup. This instance will use configuration values
/// from config.yaml.src.
class TestApplication {
  static const DefaultClientID = "com.aqueduct.test";
  static const DefaultClientSecret = "kilimanjaro";

  /// Creates an instance of this class.
  ///
  /// Reads configuration values from config.yaml.src. See [start] for usage.
  TestApplication() {
    configuration = new GloryBackendConfiguration("config.yaml.src");
    configuration.database.isTemporary = true;
  }

  Application<GloryBackendSink> application;
  GloryBackendSink get sink => application.mainIsolateSink;
  TestClient client;
  GloryBackendConfiguration configuration;

  /// Starts running this test harness.
  ///
  /// This method will start an [Application] with [GloryBackendSink].
  /// The declared [ManagedObject]s in this application will be
  /// used to generate a temporary database schema. The [GloryBackendSink] instance will use
  /// this temporary database. Stopping this application will remove the data from the
  /// temporary database.
  ///
  /// An initial client ID/secret pair will be generated and added to the database
  /// for the [client] to use. This value is "com.aqueduct.test"/"kilimanjaro".
  ///
  /// You must call [stop] on this instance when tearing down your tests.
  Future start() async {
    RequestController.letUncaughtExceptionsEscape = true;
    application = new Application<GloryBackendSink>();
    application.configuration.configurationFilePath = "config.yaml.src";

    await application.start(runOnMainIsolate: true);

    ManagedContext.defaultContext = sink.context;

    await createDatabaseSchema(sink.context, sink.logger);
    await addClientRecord();

    client = new TestClient(application)
      ..clientID = DefaultClientID
      ..clientSecret = DefaultClientSecret;
  }

  /// Stops running this application harness.
  ///
  /// This method must be called during test tearDown.
  Future stop() async {
    await application?.stop();
  }

  /// Adds a client id/secret pair to the temporary database.
  ///
  /// [start] must have already been called prior to executing this method. By default,
  /// every application harness inserts a default client record during [start]. See [start]
  /// for more details.
  static Future<ManagedClient> addClientRecord(
      {String clientID: DefaultClientID,
      String clientSecret: DefaultClientSecret}) async {
    var salt = AuthUtility.generateRandomSalt();
    var hashedPassword = AuthUtility.generatePasswordHash(clientSecret, salt);

    var clientQ = new Query<ManagedClient>()
      ..values.id = clientID
      ..values.salt = salt
      ..values.hashedSecret = hashedPassword;
    return clientQ.insert();
  }

  /// Adds database tables to the temporary test database based on the declared [ManagedObject]s in this application.
  ///
  /// This method is executed during [start], and you shouldn't have to invoke it yourself.
  static Future createDatabaseSchema(
      ManagedContext context, Logger logger) async {
    var builder = new SchemaBuilder.toSchema(
        context.persistentStore, new Schema.fromDataModel(context.dataModel),
        isTemporary: true);

    for (var cmd in builder.commands) {
      logger?.info("$cmd");
      await context.persistentStore.execute(cmd);
    }
  }
}
