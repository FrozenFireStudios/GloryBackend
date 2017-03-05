import '../glory_backend.dart';

class Participant extends ManagedObject<_Participant> implements _Participant {
  static Participant from(Map json) {
    Map stats = json["attributes"]["stats"];
    bool afked = stats["wentAfk"];
    String buildType = "wp"; // TODO: This
    String role = "carry"; // TODO: This
    int kills = stats["kills"];
    int deaths = stats["deaths"];
    int assists = stats["assists"];
    double kda = (kills + assists) / deaths;

    if (afked) {
      return null;
    }

    return new Participant()
      ..id = json["id"]
      ..characterName = json["attributes"]["actor"]
      ..buildType = buildType
      ..role = role
      ..won = stats["winner"]
      ..kda = kda;
  }
}

class _Participant {
  @ManagedColumnAttributes(primaryKey: true, unique: true, indexed: true)
  String id;
  String characterName;
  String buildType;
  String role;
  bool won;
  double kda;

  @ManagedRelationship(#participants, isRequired: true, onDelete: ManagedRelationshipDeleteRule.cascade)
  VGMatch match;
}