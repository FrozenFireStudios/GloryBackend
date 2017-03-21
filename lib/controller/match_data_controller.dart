import '../glory_backend.dart';

class MatchDataController extends HTTPController {
  @httpGet
  Future<Response> getMatchData() async {
    var query = new Query<VGMatch>()..joinMany((m) => m.participants);
    var result = await query.fetch();
    return new Response.ok(result);
  }

  @httpDelete
  Future<Response> clearMatchData() async {
    var pQuery = new Query<Participant>()..canModifyAllInstances = true;
    await pQuery.delete();

    var mQuery = new Query<VGMatch>()..canModifyAllInstances = true;
    await mQuery.delete();

    return new Response.ok(null);
  }
}