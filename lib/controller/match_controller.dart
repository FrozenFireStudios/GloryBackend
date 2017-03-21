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

    int offset = ((page ?? 1) - 1) * 50;
    createdAt ??= "2017-03-01T00:00:00Z";

    var queryParams = {
      "filter[playerNames]": playerName,
      "filter[createdAt-start]": createdAt,
      "filter[gameMode]": "ranked,casual,private",
      "page[limit]": "50",
      "page[offset]": "$offset"
    };

    var queryString = queryParams.keys.map((key) {
      return "${Uri.encodeQueryComponent(key)}=${Uri.encodeQueryComponent(queryParams[key])}";
    }).join("&");

    var urlString = "https://api.dc01.gamelockerapp.com/shards/${shard}/matches?$queryString";

    String apiKey = Platform.environment["VG_API_KEY"];
    Map<String, String> headers = {
      "Authorization": "Bearer ${apiKey}",
      "X-TITLE-ID": "semc-vainglory",
      "Accept": "application/vnd.api+json",
      "Accept-Encoding": "gzip"
    };

    var response = await http.get(urlString, headers: headers);
    if (response.statusCode == 200) {
      var json = response.body;
      var matches = VGMatch.matchesFrom(json, items);
      var savedMatchCount = await saveMatches(matches);

      return new Response.ok("Saved ${savedMatchCount} matches");
    }

    print("\nMadGlory Status Code: ${response.statusCode}\n");
    return new Response.serverError();
  }

  Future<int> saveMatches(List<VGMatch> matches) async {
    if (matches.length == 0) {
      return 0;
    }

    List<String> matchIDs = matches.map((m) => m.id).toList();

    var query = new Query<VGMatch>()
      ..where.id = whereIn(matchIDs)
      ..returningProperties((m) => [m.id]);
    var existingMatches =  await query.fetch();
    var existingMatchIDs = existingMatches.map((m) => m.id).toList();

    List<VGMatch> newMatches = matches.where((m) => !existingMatchIDs.contains(m.id)).toList();

    await Future.forEach(newMatches, ((VGMatch match) async {
      var matchQuery = new Query<VGMatch>()
        ..values.id = match.id
        ..values.duration = match.duration;
      var savedMatch = await matchQuery.insert();

      await Future.forEach(match.participants, ((Participant participant) async {
        participant.match = savedMatch;
        var pQuery = new Query<Participant>()
          ..values = participant;
        await pQuery.insert();
      }));
    }));

    return newMatches.length;
  }
}
