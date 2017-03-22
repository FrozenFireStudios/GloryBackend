import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();

    List<int> charIndexes = [1, 2, 3, 4];

    Future.forEach(charIndexes, (index) async {
      var query = new Query<Character>()
          ..values.name = "Character${index}"
          ..values.serverName = "Character${index}"
          ..values.buildsString = ""
          ..values.rolesString = "";

      await query.insert();
    });

    List<int> matchIndexes = [0, 1, 2, 3, 4];
    List<List<bool>> matchValues = [
      [
        true,
        true,
        true
      ],
      [
        false,
        false,
        false
      ],
      [
        true,
        true,
        false
      ],
      [
        true,
        false,
        false
      ],
      [
        false,
        true,
        false
      ]
    ];

    await Future.forEach(matchIndexes, (index) async {
      var mQuery = new Query<VGMatch>()
          ..values.id = "${index}"
          ..values.duration = 1700;

      var match = await mQuery.insert();

      var values = matchValues[index];
      List<int> participantIndexes = [1, 2, 3];

      await Future.forEach(participantIndexes, (pIndex) async {
        var pQuery = new Query<Participant>()
            ..values.id = "${index}:${pIndex}"
            ..values.characterName = "Character${pIndex}"
            ..values.won = values[pIndex - 1]
            ..values.match = match
            ..values.buildType = ""
            ..values.role = ""
            ..values.kda = 1.0;

        await pQuery.insert();
      });
    });
  });

  tearDown(() async {
    await app.stop();
  });

  test("Generate Matchups", () async {
    var req = app.client.clientAuthenticatedRequest("/admin/matchups/generate");
    var response = await req.post();

    expect(response, hasResponse(200, "Saved 16 matchups"));

    var req2 = app.client.request("/matchups");
    var matchups = await req2.get();

    expect(matchups, hasResponse(200, [
      {
        "id": greaterThan(0),
        "character": "Character1",
        "otherCharacter": "Character1",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 5,
        "gamesWithWon": 3
      },
      {
        "id": greaterThan(0),
        "character": "Character1",
        "otherCharacter": "Character2",
        "gamesAgainst": 2,
        "gamesAgainstWon": 1,
        "gamesWith": 3,
        "gamesWithWon": 2
      },
      {
        "id": greaterThan(0),
        "character": "Character1",
        "otherCharacter": "Character3",
        "gamesAgainst": 2,
        "gamesAgainstWon": 2,
        "gamesWith": 3,
        "gamesWithWon": 1
      },
      {
        "id": greaterThan(0),
        "character": "Character1",
        "otherCharacter": "Character4",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 0,
        "gamesWithWon": 0
      },
      {
        "id": greaterThan(0),
        "character": "Character2",
        "otherCharacter": "Character2",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 5,
        "gamesWithWon": 3
      },
      {
        "id": greaterThan(0),
        "character": "Character2",
        "otherCharacter": "Character1",
        "gamesAgainst": 2,
        "gamesAgainstWon": 1,
        "gamesWith": 3,
        "gamesWithWon": 2
      },
      {
        "id": greaterThan(0),
        "character": "Character2",
        "otherCharacter": "Character3",
        "gamesAgainst": 2,
        "gamesAgainstWon": 2,
        "gamesWith": 3,
        "gamesWithWon": 1
      },
      {
        "id": greaterThan(0),
        "character": "Character2",
        "otherCharacter": "Character4",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 0,
        "gamesWithWon": 0
      },
      {
        "id": greaterThan(0),
        "character": "Character3",
        "otherCharacter": "Character3",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 5,
        "gamesWithWon": 1
      },
      {
        "id": greaterThan(0),
        "character": "Character3",
        "otherCharacter": "Character1",
        "gamesAgainst": 2,
        "gamesAgainstWon": 0,
        "gamesWith": 3,
        "gamesWithWon": 1
      },
      {
        "id": greaterThan(0),
        "character": "Character3",
        "otherCharacter": "Character2",
        "gamesAgainst": 2,
        "gamesAgainstWon": 0,
        "gamesWith": 3,
        "gamesWithWon": 1
      },
      {
        "id": greaterThan(0),
        "character": "Character3",
        "otherCharacter": "Character4",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 0,
        "gamesWithWon": 0
      },
      {
        "id": greaterThan(0),
        "character": "Character4",
        "otherCharacter": "Character4",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 0,
        "gamesWithWon": 0
      },
      {
        "id": greaterThan(0),
        "character": "Character4",
        "otherCharacter": "Character1",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 0,
        "gamesWithWon": 0
      },
      {
        "id": greaterThan(0),
        "character": "Character4",
        "otherCharacter": "Character2",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 0,
        "gamesWithWon": 0
      },
      {
        "id": greaterThan(0),
        "character": "Character4",
        "otherCharacter": "Character3",
        "gamesAgainst": 0,
        "gamesAgainstWon": 0,
        "gamesWith": 0,
        "gamesWithWon": 0
      }
    ]));
  });
}
