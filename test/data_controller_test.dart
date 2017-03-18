import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();

    var itemQuery1 = new Query<Item>()
      ..values.name = "Halcyon Potion"
      ..values.description = "Consume: Restore 80 health and 40 energy instantly, then 200 health & 65 energy over 25 seconds."
      ..values.aliasString = "*1000_Item_HalcyonPotion*,Mulled Wine"
      ..values.cost = 25
      ..values.typesString = "other"
      ..values.tier = 1;

    await itemQuery1.insert();

    var itemQuery2 = new Query<Item>()
      ..values.name = "Atlas Pauldron"
      ..values.description = """+85 Armor
+35 Shield

Active: Reduces attack speed of nearby enemies by 65% for 5 seconds in a 4-meter range. Does not reduce below the base attack speed animation. (15s cooldown)"""
      ..values.aliasString = "*1057_Item_AtlasPauldron*,Atlas Pauldron"
      ..values.cost = 1900
      ..values.typesString = "defense,support"
      ..values.tier = 3;

    await itemQuery2.insert();

    var characterQuery1 = new Query<Character>()
      ..values.name = "Name1"
      ..values.serverName = "ServerName1"
      ..values.buildsString = "weapon,crystal"
      ..values.rolesString = "carry,jungler";

    await characterQuery1.insert();

    var characterQuery2 = new Query<Character>()
      ..values.name = "Name2"
      ..values.serverName = "ServerName2"
      ..values.buildsString = "support"
      ..values.rolesString = "captain";

    await characterQuery2.insert();

    var matchupQuery1 = new Query<Matchup>()
      ..values.character = "*character1*"
      ..values.otherCharacter = "*character2*"
      ..values.againstValue = 50
      ..values.withValue = 75;

    await matchupQuery1.insert();

    var matchupQuery2 = new Query<Matchup>()
      ..values.character = "*character3*"
      ..values.otherCharacter = "*character1*"
      ..values.againstValue = 60
      ..values.withValue = 30;

    await matchupQuery2.insert();
  });

  tearDown(() async {
    await app.stop();
  });

  test("Gets all client data", () async {
    var req = app.client.request("/data");
    var result = await req.get();

    expect(result, hasResponse(200, {
      "characters": [
        {
          "id": 1,
          "name": "Name1",
          "serverName": "ServerName1",
          "builds": ["weapon", "crystal"],
          "roles": ["carry", "jungler"]
        },
        {
          "id": 2,
          "name": "Name2",
          "serverName": "ServerName2",
          "builds": ["support"],
          "roles": ["captain"]
        }
      ],
      "items": [
        {
          "id": 1,
          "name": "Halcyon Potion",
          "description": "Consume: Restore 80 health and 40 energy instantly, then 200 health & 65 energy over 25 seconds.",
          "aliases": ["*1000_Item_HalcyonPotion*", "Mulled Wine"],
          "cost": 25,
          "types": ["other"],
          "tier": 1
        },
        {
          "id": 2,
          "name": "Atlas Pauldron",
          "description": "+85 Armor\n+35 Shield\n\nActive: Reduces attack speed of nearby enemies by 65% for 5 seconds in a 4-meter range. Does not reduce below the base attack speed animation. (15s cooldown)",
          "aliases": ["*1057_Item_AtlasPauldron*", "Atlas Pauldron"],
          "cost": 1900,
          "types": ["defense", "support"],
          "tier": 3
        }
      ],
      "matchups": [
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
      ]
    }));
  });
}