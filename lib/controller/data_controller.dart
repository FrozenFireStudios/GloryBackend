import '../glory_backend.dart';

class DataController extends HTTPController {
  @httpGet
  Future<Response> getData() async {
    return new Response.ok({"data": "App data goes here"});
  }
}
