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
    var req = app.client.clientAuthenticatedRequest("/admin/characters");
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

  test("Get character", () async {
    var req = app.client.clientAuthenticatedRequest("/admin/characters/1");
    var response = await req.get();

    expect(response, hasResponse(200, {
      "id": 1,
      "name": "Name1",
      "serverName": "ServerName1",
      "builds": ["weapon", "crystal"],
      "roles": ["carry", "jungler"]
    }));
  });

  test("Create character", () async {
    var newCharacterJSON = {
      "name": "Name3",
      "serverName": "**ServerName3**",
      "builds": ["support", "crystal"],
      "roles": ["captain", "jungler"]
    };

    var req = app.client.clientAuthenticatedRequest("/admin/characters")
      ..json = newCharacterJSON;
    var response = await req.post();

    newCharacterJSON["id"] = 3;

    expect(response, hasResponse(200, newCharacterJSON));
  });

  test("Update Character", () async {
    var req = app.client.clientAuthenticatedRequest("/admin/characters/2")
      ..json = {
        "name": "new name"
      };
    var response = await req.put();

    expect(response, hasResponse(200, {
      "id": 2,
      "name": "new name",
      "serverName": "ServerName2",
      "builds": ["support"],
      "roles": ["captain"]
    }));
  });

  test("Delete Character", () async {
    var deleteReq = app.client.clientAuthenticatedRequest("/admin/characters/1");
    var deleteResponse = await deleteReq.delete();

    expect(deleteResponse, hasStatus(200));

    var getReq = app.client.request("/characters/1");
    var getResponse = await getReq.get();

    expect(getResponse, hasStatus(404));
  });

  test("prevents unauthorized access", () async {
    var req = app.client.request("/admin/characters");
    var response = await req.get();

    expect(response, hasStatus(401));
  });
}
