import '../glory_backend.dart';

class MatchupGenerationController extends HTTPController {
  @httpPost
  Future<Response> generateMatchups() async {
    var deleteQuery = new Query<Matchup>()..canModifyAllInstances = true;
    await deleteQuery.delete();

    var characterQuery = new Query<Character>()..returningProperties((c) => [c.serverName]);
    var characterNames = (await characterQuery.fetch()).map((c) => c.serverName).toList();

    int savedMatchups = 0;

    var matchesQuery = new Query<VGMatch>();
    matchesQuery.joinMany((m) => m.participants)
      ..returningProperties((p) => [p.characterName, p.won]);

    var allMatches = await matchesQuery.fetch();

    for (var name in characterNames) {
//      var matchesWithThisCharacterQuery = new Query<VGMatch>()
//          ..where.participants.haveAtLeastOneWhere.characterName = name;
//
//      matchesWithThisCharacterQuery.joinMany((m) => m.participants)
//        ..returningProperties((p) => [p.characterName, p.won]);
//
//      var matches = await matchesWithThisCharacterQuery.fetch();

      var matches = allMatches.where((m) {
        return (m.participants.firstWhere((p) => p.characterName == name, orElse: () => null) != null);
      });

      int wonCount = 0, lostCount = 0;

      matches.forEach((m) {
        if (m.participants.firstWhere((p) => p.characterName == name).won) {
          wonCount ++;
        } else {
          lostCount ++;
        }
      });

      var selfMatchupQuery = new Query<Matchup>()
        ..values.character = name
        ..values.otherCharacter = name
        ..values.gamesAgainst = 0
        ..values.gamesAgainstWon = 0
        ..values.gamesWith = (wonCount + lostCount)
        ..values.gamesWithWon = wonCount;

      await selfMatchupQuery.insert();
      savedMatchups ++;

      for (var otherName in characterNames) {
        if (name == otherName) {
          continue;
        }

//        var matchesWithBothCharactersQuery = new Query<VGMatch>()
//          ..where.participants.haveAtLeastOneWhere.characterName = name
//          ..where.participants.haveAtLeastOneWhere.characterName = otherName;
//
//        matchesWithBothCharactersQuery.joinMany((m) => m.participants)
//          ..returningProperties((p) => [p.characterName, p.won]);
//
//        var pairMatches = await matchesWithBothCharactersQuery.fetch();

        var pairMatches = allMatches.where((m) {
          var character = m.participants.firstWhere((p) => p.characterName == name, orElse: () => null);
          var otherCharacter = m.participants.firstWhere((p) => p.characterName == otherName, orElse: () => null);

          return (character != null && otherCharacter != null);
        });

        int wonAgainstCount = 0, lostAgainstCount = 0, wonWithCount = 0, lostWithCount = 0;

        pairMatches.forEach((m) {
          var character = m.participants.firstWhere((p) => p.characterName == name);
          var otherCharacter = m.participants.firstWhere((p) => p.characterName == otherName);


          if (character.won == otherCharacter.won) {
            if (character.won) {
              wonWithCount ++;
            } else {
              lostWithCount ++;
            }
          } else {
            if (character.won) {
              wonAgainstCount ++;
            } else {
              lostAgainstCount ++;
            }
          }
        });

        var matchupQuery = new Query<Matchup>()
          ..values.character = name
          ..values.otherCharacter = otherName
          ..values.gamesAgainst = (wonAgainstCount + lostAgainstCount)
          ..values.gamesAgainstWon = wonAgainstCount
          ..values.gamesWith = (wonWithCount + lostWithCount)
          ..values.gamesWithWon = wonWithCount;

        await matchupQuery.insert();
        savedMatchups ++;
      }
    }

    return new Response.ok("Saved ${savedMatchups} matchups");
  }
}
