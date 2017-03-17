import '../glory_backend.dart';

class MatchupController extends HTTPController {
  @httpGet
  Future<Response> getMatchups() async {
    var query = new Query<Matchup>();
    var result = await query.fetch();

    return new Response.ok(result);
  }
}
