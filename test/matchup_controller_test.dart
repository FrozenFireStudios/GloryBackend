import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();

    var query1 = new Query<Matchup>()
      ..values.character = "*character1*"
      ..values.otherCharacter = "*character2*"
      ..values.againstValue = 50
      ..values.withValue = 75;

    await query1.insert();

    var query2 = new Query<Matchup>()
      ..values.character = "*character3*"
      ..values.otherCharacter = "*character1*"
      ..values.againstValue = 60
      ..values.withValue = 30;

    await query2.insert();
  });

  tearDown(() async {
    await app.stop();
  });

  test("Get items", () async {
    var req = app.client.request("/matchups");
    var response = await req.get();

    expect(response, hasResponse(200, [
      {
        "id": 1,
        "character": "*character1*",
        "otherCharacter": "*character2*",
        "againstValue": 50,
        "withValue": 75
      },
      {
        "id": 2,
        "character": "*character3*",
        "otherCharacter": "*character1*",
        "againstValue": 60,
        "withValue": 30
      }
    ]));
  });
}