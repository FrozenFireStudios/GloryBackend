import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  List<Item> items;

  Participant participant1;
  Participant participant2;
  Participant participant3;

  List<Participant> participants() {
    return [participant1, participant2, participant3];
  }

  setUp(() async {
    await app.start();

    Item item1 = new Item()
        ..name = "Crystal Item1"
        ..aliases = ["crystal1", "firstCrystal"]
        ..types = ["crystal"]
        ..tier = 1;

    Item item2 = new Item()
      ..name = "Crystal Item3"
      ..aliases = ["crystal3", "big_crystal"]
      ..types = ["crystal"]
      ..tier = 3;

    Item item3 = new Item()
      ..name = "Fountain"
      ..aliases = ["fountain", "support3"]
      ..types = ["support"]
      ..tier = 3;

    Item item4 = new Item()
      ..name = "Crucible"
      ..aliases = ["crucible"]
      ..types = ["support"]
      ..tier = 3;

    Item item5 = new Item()
      ..name = "Weapon Item"
      ..aliases = ["weapon3"]
      ..types = ["weapon"]
      ..tier = 3;

    Item item6 = new Item()
      ..name = "Defense Item"
      ..aliases = ["defense3"]
      ..types = ["defense"]
      ..tier = 3;

    items = [item1, item2, item3, item4, item5, item6];

    participant1 = new Participant();
    participant2 = new Participant();
    participant3 = new Participant();

    participant1.totalCS = 3;
    participant1.jungleCS = 0;
    participant1.itemGrants = {
      "support3": 2,
      "crucible": 1,
      "crystal3": 1,
      "defense3": 2
    };

    participant2.totalCS = 50;
    participant2.jungleCS = 5;
    participant2.itemGrants = {
      "fountain": 1,
      "weapon3": 2,
      "defense3": 2,
      "other": 1
    };

    participant3.totalCS = 40;
    participant3.jungleCS = 30;
    participant3.itemGrants = {
      "support3": 1,
      "crucible": 1,
      "crystal3": 1,
      "crystal1": 2,
      "non-existent": 1
    };
  });

  tearDown(() async {
    items = null;
    participant1 = null;
    participant2 = null;
    participant3 = null;

    await app.stop();
  });

  test("Success Case", () async {
    var result = Participant.assignBuildsAndRolesForTeam(participants(), items);
    expect(result, isTrue);

    expect(participant1.buildType, equals("support"));
    expect(participant1.role, equals("captain"));

    expect(participant2.buildType, equals("weapon"));
    expect(participant2.role, equals("carry"));

    expect(participant3.buildType, equals("crystal"));
    expect(participant3.role, equals("jungler"));
  });

  test("Can find Hybrid Characters", () async {
    participant3.itemGrants["crystal1"] = 0;
    participant3.itemGrants["weapon3"] = 1;

    var result = Participant.assignBuildsAndRolesForTeam(participants(), items);
    expect(result, isTrue);

    expect(participant3.buildType, equals("hybrid"));
  });

  test("Tier matters more than count", () async {
    participant3.itemGrants["weapon3"] = 2;

    var result = Participant.assignBuildsAndRolesForTeam(participants(), items);
    expect(result, isTrue);

    expect(participant3.buildType, equals("weapon"));
  });

  test("Assignment only works on full team", () async {
    var result = Participant.assignBuildsAndRolesForTeam([participant1, participant2], items);
    expect(result, isFalse);

    Participant participant4 = new Participant();
    result = Participant.assignBuildsAndRolesForTeam([participant1, participant2, participant3, participant4], items);
    expect(result, isFalse);
  });

  test("Fails with not enough CS to determine roles", () async {
    participant2.totalCS = 0;

    var result = Participant.assignBuildsAndRolesForTeam(participants(), items);
    expect(result, isFalse);
  });

  test("Fails with no clear player with worst CS", () async {
    participant1.totalCS = 35;

    var result = Participant.assignBuildsAndRolesForTeam(participants(), items);
    expect(result, isFalse);
  });

  test("Fails with no clear jungler", () async {
    participant2.totalCS = 40;
    participant2.jungleCS = 20;

    participant3.totalCS = 50;
    participant3.jungleCS = 25;

    var result = Participant.assignBuildsAndRolesForTeam(participants(), items);
    expect(result, isFalse);
  });

  test("Fails with no clear captain (tied for support item count)", () async {
    participant3.itemGrants["crucible"] = 2;

    var result = Participant.assignBuildsAndRolesForTeam(participants(), items);
    expect(result, isFalse);
  });

  test("Fails if a player doesn't have enough wp or cp", () async {
    participant3.itemGrants["crystal3"] = 0;

    var result = Participant.assignBuildsAndRolesForTeam(participants(), items);
    expect(result, isFalse);
  });
}
