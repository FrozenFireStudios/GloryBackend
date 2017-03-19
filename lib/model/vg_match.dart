import '../glory_backend.dart';
import 'dart:convert';

class VGMatch extends ManagedObject<_VGMatch> implements _VGMatch {
  static List<VGMatch> matchesFrom(String json, List<Item> items) {
    Map jsonDict = JSON.decode(json);
    List errors = jsonDict["errors"];

    if (errors != null && errors.length > 0) {
      throw errors;
    }

    List includedMaps = jsonDict["included"];
    List participantMaps = includedMaps.where((Map m) => m["type"] == "participant").toList();
    List<Participant> ps = participantMaps.map((Map json) => Participant.from(json)).toList();
    Map<String, Participant> participants = new Map<String, Participant>();
    ps.forEach((p) {
      if (p?.id != null) {
        participants[p.id] = p;
      }
    });

    List rosterMaps = includedMaps.where((Map m) => m["type"] == "roster").toList();
    Map<String, List<Participant>> rosters = new Map<String, List<Participant>>();

    rosterMaps.forEach((Map m) {
      List data = m["relationships"]["participants"]["data"];
      List<String> participantIDs = data.map((Map p) => p["id"] as String).toList();
      List<Participant> rosterParticipants = participantIDs.map((id) => participants[id]).where((p) => p != null).toList();

      if (rosterParticipants.length == 3 && Participant.assignBuildsAndRolesForTeam(rosterParticipants, items)) {
        String rosterID = m["id"];
        rosters[rosterID] = rosterParticipants;
      }
    });

    List matchMaps = jsonDict["data"];
    List<VGMatch> matches = new List<VGMatch>();

    matchMaps.forEach((m) {
      List data = m["relationships"]["rosters"]["data"];
      List<String> rosterIDs = data.map((Map r) => r["id"] as String).toList();
      List<List<Participant>> matchRosters = rosterIDs.map((id) => rosters[id]).where((r) => r != null).toList();
      List<Participant> matchParticipants = matchRosters.expand((r) => r).toList();

      if (matchParticipants.length == 6) {
        matches.add(
            new VGMatch()
              ..id = m["id"]
              ..duration = m["attributes"]["duration"]
              ..participants = new ManagedSet<Participant>.from(matchParticipants)
        );
      }
    });

    return matches;
  }
}

class _VGMatch {
  @ManagedColumnAttributes(primaryKey: true, unique: true, indexed: true)
  String id;
  int duration;

  ManagedSet<Participant> participants;
}