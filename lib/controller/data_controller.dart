import '../glory_backend.dart';

class DataController extends HTTPController {
  @httpGet
  Future<Response> getData() async {
    var characters = await new Query<Character>().fetch();
    var items = await new Query<Item>().fetch();
    var matchups = await new Query<Matchup>().fetch();

    var result = {
      "characters": characters.map((c) => c.asMap()).toList(),
      "items": items.map((i) => i.asMap()).toList(),
      "matchups": matchups.map((m) => m.asMap()).toList()
    };

    return new Response.ok(result);
  }
}