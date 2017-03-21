import 'harness/app.dart';

Future main() async {
  TestApplication app = new TestApplication();

  setUp(() async {
    await app.start();

    Future.forEach([1,2], (mIndex) async {
      var match = await (new Query<VGMatch>()
      ..values.id = "${mIndex}"
      ..values.duration = mIndex * 1000).insert();

      Future.forEach([1,2,3], (pIndex) async {
        var query = new Query<Participant>()
            ..values.id = "${mIndex}:${pIndex}"
            ..values.characterName = "name${pIndex}"
            ..values.buildType = "support"
            ..values.role = "captain"
            ..values.won = true
            ..values.kda = 2.0
            ..values.match = match;

        await query.insert();
      });
    });
  });

  tearDown(() async {
    await app.stop();
  });

  test("Get matches", () async {
    var req = app.client.clientAuthenticatedRequest("/admin/matches/data");
    var response = await req.get();

    expect(response, hasResponse(200, hasLength(2)));
  });

  test("Delete all matches", () async {
    var req = app.client.clientAuthenticatedRequest("/admin/matches/data");
    var response = await req.delete();

    expect(response, hasStatus(200));

    req = app.client.clientAuthenticatedRequest("/admin/matches/data");
    response = await req.get();

    expect(response, hasResponse(200, hasLength(0)));
  });
}