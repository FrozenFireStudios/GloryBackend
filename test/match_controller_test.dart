import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();
  });

  tearDown(() async {
    await app.stop();
  });

  test("Get more matches", () async {
    var req = app.client.clientAuthenticatedRequest("/admin/matches?playerName=YEEESSS&shard=na");
    var response = await req.get();

    expect(response, hasStatus(200));
  });
}
