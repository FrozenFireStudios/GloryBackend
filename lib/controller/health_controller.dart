import '../glory_backend.dart';

class HealthController extends HTTPController {
  @httpGet
  Future<Response> getIdentity() async {
    return new Response.ok("For glory!");
  }
}
