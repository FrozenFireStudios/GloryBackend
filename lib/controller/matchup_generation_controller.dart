import '../glory_backend.dart';

class MatchupGenerationController extends HTTPController {
  @httpPost
  Future<Response> generateMatchups() async {
    var matches = await new Query<VGMatch>().fetch();

    return new Response.ok("Got ${matches.length} matches");
  }
}