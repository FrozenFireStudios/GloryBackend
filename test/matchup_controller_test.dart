import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();

    var query1 = new Query<Matchup>()
      ..values.character = "*character1*"
      ..values.otherCharacter = "*character2*"
      ..values.gamesWith = 2
      ..values.gamesWithWon = 1
      ..values.gamesAgainst = 4
      ..values.gamesAgainstWon = 3;

    await query1.insert();

    var query2 = new Query<Matchup>()
      ..values.character = "*character3*"
      ..values.otherCharacter = "*character1*"
      ..values.gamesWith = 10
      ..values.gamesWithWon = 6
      ..values.gamesAgainst = 9
      ..values.gamesAgainstWon = 3;

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
        "gamesWith": 2,
        "gamesWithWon": 1,
        "gamesAgainst": 4,
        "gamesAgainstWon": 3
      },
      {
        "id": 2,
        "character": "*character3*",
        "otherCharacter": "*character1*",
        "gamesWith": 10,
        "gamesWithWon": 6,
        "gamesAgainst": 9,
        "gamesAgainstWon": 3
      }
    ]));
  });
}