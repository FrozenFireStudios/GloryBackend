import '../glory_backend.dart';

class CharacterController extends HTTPController {
  @httpGet
  Future<Response> getCharacters() async {
    var result = await new Query<Character>().fetch();
    return new Response.ok(result);
  }
}
