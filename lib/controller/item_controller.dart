import '../glory_backend.dart';

class ItemController extends HTTPController {
  @httpGet
  Future<Response> getItems() async {
    var result = await new Query<Item>().fetch();
    return new Response.ok(result);
  }
}
