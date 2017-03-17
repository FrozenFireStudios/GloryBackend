import 'harness/app.dart';

main() {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();
  });

  tearDown(() async {
    await app.stop();
  });

  test("Returns Characters", () async {
    var response = await app.client.request("/characters").get();

    expect(response, hasResponse(200, hasLength(30)));
  });
}