import '../glory_backend.dart';
import 'dart:io';
import 'dart:convert';

class MatchController extends HTTPController {
  @httpGet
  Future<Response> getMatches() async {
    var itemQuery = new Query<Item>()
      ..where.tier = whereEqualTo(3);

    List<Item> items = await itemQuery.fetch();

    var completer = new Completer();
    var contents = new StringBuffer();

    HttpClient client = new HttpClient();
    client.getUrl(Uri.parse("https://api.dc01.gamelockerapp.com/shards/na/matches?filter%5BcreatedAt-start%5D=2017-03-01T00:00:00Z"))
      .then((HttpClientRequest request) {
        String apiKey = Platform.environment["VG_API_KEY"];
        request.headers.set("Authorization", "Bearer ${apiKey}");
        request.headers.set("X-TITLE-ID", "semc-vainglory");
        request.headers.set("Accept", "application/vnd.api+json");
        request.headers.set("Accept-Encoding", "gzip");

        return request.close();
      })
      .then((HttpClientResponse response) {
        if (response.statusCode == 200) {
          response.transform(UTF8.decoder).listen((String data) {
            contents.write(data);
          }, onDone: () {
            String json = contents.toString();
            List<VGMatch> matches = VGMatch.matchesFrom(json, items);
            List matchMaps = matches.map((m) {
              List pMaps = m.participants.map((p) => p.asMap()).toList();
              return {
                "id": m.id,
                "duration": m.duration,
                "participants": pMaps
              };
            }).toList();

            completer.complete(new Response.ok(matchMaps));
          });
        } else {
          completer.complete(response);
        }
      });

    return completer.future;
  }

  List<VGMatch> matchesFrom(String json) {






  }
}
