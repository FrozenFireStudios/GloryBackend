import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();

    var query1 = new Query<Item>()
      ..values.name = "Halcyon Potion"
      ..values.description = "Consume: Restore 80 health and 40 energy instantly, then 200 health & 65 energy over 25 seconds."
      ..values.aliasString = "*1000_Item_HalcyonPotion*,Mulled Wine"
      ..values.cost = 25
      ..values.typesString = "other"
      ..values.tier = 1;

    await query1.insert();

    var query2 = new Query<Item>()
      ..values.name = "Atlas Pauldron"
      ..values.description = """+85 Armor
+35 Shield

Active: Reduces attack speed of nearby enemies by 65% for 5 seconds in a 4-meter range. Does not reduce below the base attack speed animation. (15s cooldown)"""
      ..values.aliasString = "*1057_Item_AtlasPauldron*,Atlas Pauldron"
      ..values.cost = 1900
      ..values.typesString = "defense,support"
      ..values.tier = 3;

    await query2.insert();
  });

  tearDown(() async {
    await app.stop();
  });

  test("Get items", () async {
    var req = app.client.request("/items");
    var response = await req.get();

    expect(response, hasResponse(200, [
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
    ]));
  });
}
