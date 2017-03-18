import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();

    var query1 = new Query<Character>()
      ..values.name = "Name1"
      ..values.serverName = "ServerName1"
      ..values.buildsString = "weapon,crystal"
      ..values.rolesString = "carry,jungler";

    await query1.insert();

    var query2 = new Query<Character>()
      ..values.name = "Name2"
      ..values.serverName = "ServerName2"
      ..values.buildsString = "support"
      ..values.rolesString = "captain";

    await query2.insert();
  });

  tearDown(() async {
    await app.stop();
  });

  test("Get characters", () async {
    var req = app.client.request("/characters");
    var response = await req.get();

    expect(response, hasResponse(200, [
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
    ]));
  });
}
