import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();
  });

  tearDown(() async {
    await app.stop();
  });

  test("Generate Matchups", () async {
    var req = app.client.clientAuthenticatedRequest("/admin/matchups/generate");
    var response = await req.post();

    expect(response, hasStatus(200));
  });
}