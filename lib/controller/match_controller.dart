import 'package:http/http.dart' as http;
import '../glory_backend.dart';
import 'dart:io';
import 'dart:convert';

class MatchController extends HTTPController {
  @httpGet
  Future<Response> getMatches(
      @HTTPQuery("playerName") String playerName,
      @HTTPQuery("shard") String shard,
      {@HTTPQuery("page") int page,
      @HTTPQuery("createdAt") String createdAt}) async {

    var itemQuery = new Query<Item>()
      ..where.tier = whereEqualTo(3);

    List<Item> items = await itemQuery.fetch();

    var completer = new Completer();
    var contents = new StringBuffer();

    int offset = ((page ?? 1) - 1) * 50;
    createdAt ??= "2017-03-01T00:00:00Z";

    String urlString = Uri.encodeFull("https://api.dc01.gamelockerapp.com/shards/${shard}/matches?filter[playerNames]=${playerName}&filter[createdAt-start]=${createdAt}&filter[gameMode]=ranked,casual,private&page[limit]=50&page[offset]=${offset}");
    String apiKey = Platform.environment["VG_API_KEY"];
    Map<String, String> headers = {
      "Authorization": "Bearer ${apiKey}",
      "X-TITLE-ID": "semc-vainglory",
      "Accept": "application/vnd.api+json",
      "Accept-Encoding": "gzip"
    };

    http.get(urlString, headers: headers)
    .then((response) {
      if (response.statusCode == 200) {
        String json = response.body;
        List<VGMatch> matches = VGMatch.matchesFrom(json, items);
        List matchMaps = matches.map((m) {
          List pMaps = m.participants.map((p) => p.asMap()).toList();
          return {
            "id": m.id,
            "duration": m.duration,
            "participants": pMaps
          };
        }).toList();

        print("MARCUS:\n${matchMaps}\n");
        
        completer.complete(new Response.ok("Got ${matchMaps.length} matches"));
      } else {
        print("\nStatus Code: ${response.statusCode}\n");
        print("URL: ${urlString}\n");
        completer.complete(new Response.serverError());
      }
    });

    return completer.future;
  }
}
