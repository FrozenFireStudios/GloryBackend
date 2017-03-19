import '../glory_backend.dart';

class Participant extends ManagedObject<_Participant> implements _Participant {
  Map<String, int> itemGrants;
  int totalCS;
  int jungleCS;

  double junglePercent() {
    return totalCS == 0 ? 0 : jungleCS / totalCS;
  }

  static Participant from(Map json) {
    Map stats = json["attributes"]["stats"];
    bool afked = stats["wentAfk"];
    int kills = stats["kills"];
    int deaths = stats["deaths"];
    int assists = stats["assists"];
    double kda = (kills + assists) / deaths;
    Map<String, int> itemGrants = stats["itemGrants"];
    int totalCS = stats["minionKills"];
    int jungleCS = stats["jungleKills"];

    if (afked) {
      return null;
    }

    return new Participant()
      ..id = json["id"]
      ..characterName = json["attributes"]["actor"]
      ..won = stats["winner"]
      ..kda = kda
      ..itemGrants = itemGrants
      ..totalCS = totalCS
      ..jungleCS = jungleCS;
  }

  static bool assignBuildsAndRolesForTeam(List<Participant> participants, List<Item> items) {
    if (participants.length != 3) {
      return false;
    }

    participants.sort((p1, p2) => p1.totalCS.compareTo(p2.totalCS));

    // See if roles can be properly determined from CS scores
    if (participants[1].totalCS < 20) {
      return false;
    }

    double csRatio = participants[0].totalCS / participants[1].totalCS;
    if (csRatio > 0.5 ) {
      return false;
    }

    participants[0].role = "captain";

    int junglePercentCompare = participants[1].junglePercent().compareTo(participants[2].junglePercent());

    if (junglePercentCompare == -1) {
      participants[2].role = "jungler";
      participants[1].role = "carry";
    } else if (junglePercentCompare == 1) {
      participants[1].role = "jungler";
      participants[2].role = "carry";
    } else {
      return false;
    }

    participants.sort((p1, p2) => p2.scoreFromItems(items, "support").compareTo(p1.scoreFromItems(items, "support")));

    if (participants[0].scoreFromItems(items, "support") == participants[1].scoreFromItems(items, "support") || participants[0].scoreFromItems(items, "support") < 2) {
      return false;
    }

    participants[0].buildType = "support";

    [participants[1], participants[2]].forEach((p) {
      int weaponScore = p.scoreFromItems(items, "weapon");
      int crystalScore = p.scoreFromItems(items, "crystal");

      if (weaponScore < 3 && crystalScore < 3) {
        p.buildType = null;
      } else if (weaponScore > crystalScore) {
        p.buildType = "weapon";
      } else if (crystalScore > weaponScore) {
        p.buildType = "crystal";
      } else {
        p.buildType = "hybrid";
      }
    });

    if (participants[1].buildType == null || participants[2].buildType == null) {
      return false;
    }

    return true;
  }

  int scoreFromItems(List<Item> items, String itemType) {
    var score = 0;

    itemGrants.forEach((itemName, count) {
      Item matchingItem = items.firstWhere((i) => i.aliases.contains(itemName), orElse: () => null);
      bool matchesType = false;

      if (matchingItem != null) {
        matchesType = matchingItem.types.contains(itemType);
      }

      if (matchesType) {
        score += (matchingItem.tier * count);
      }
    });

    return score;
  }
}

class _Participant {
  @ManagedColumnAttributes(primaryKey: true, unique: true, indexed: true)
  String id;
  String characterName;
  String buildType;
  String role;
  bool won;
  double kda;

  @ManagedRelationship(#participants, isRequired: true, onDelete: ManagedRelationshipDeleteRule.cascade)
  VGMatch match;
}