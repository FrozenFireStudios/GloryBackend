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

  test("Get item", () async {
    var req = app.client.request("/items/1");
    var response = await req.get();

    expect(response, hasResponse(200, {
        "id": 1,
        "name": "Halcyon Potion",
        "description": "Consume: Restore 80 health and 40 energy instantly, then 200 health & 65 energy over 25 seconds.",
        "aliases": ["*1000_Item_HalcyonPotion*", "Mulled Wine"],
        "cost": 25,
        "types": ["other"],
        "tier": 1
      }));
  });

  test("Create Item", () async {
    var newItemJSON = {
      "name": "Fountain of Renewal",
      "description": "Passive: Lifespring\nActive: Heals you and nearby allies for 2 health for each % missing health per second for 3 seconds. (60s cooldown)\n\n+200 Max Health\n+75 Shield",
      "aliases": ["*1045_Item_FountainOfRenewal*", "Fountain of Renewal"],
      "cost": 2300,
      "types": ["support", "defense"],
      "tier": 3
    };

    var req = app.client.request("/items")
      ..json = newItemJSON;
    var response = await req.post();

    newItemJSON["id"] = 3;

    expect(response, hasResponse(200, newItemJSON));
  });

  test("Update Item", () async {
    var req = app.client.request("/items/2")
      ..json = {
        "description": "new description"
      };
    var response = await req.put();

    expect(response, hasResponse(200, {
        "id": 2,
        "name": "Atlas Pauldron",
        "description": "new description",
        "aliases": ["*1057_Item_AtlasPauldron*", "Atlas Pauldron"],
        "cost": 1900,
        "types": ["defense", "support"],
        "tier": 3
      }));
  });

  test("Delete Item", () async {
    var deleteReq = app.client.request("/items/1");
    var deleteResponse = await deleteReq.delete();

    expect(deleteResponse, hasStatus(200));

    var getReq = app.client.request("/items/1");
    var getResponse = await getReq.get();

    expect(getResponse, hasStatus(404));
  });
}
