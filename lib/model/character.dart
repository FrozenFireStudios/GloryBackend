import '../glory_backend.dart';

class Character extends ManagedObject<_Character> implements _Character {
  @managedTransientOutputAttribute
  List<String> get builds => buildsString.split(",");

  @managedTransientInputAttribute
  void set builds(List<String> a) {
    buildsString = a.join(",");
  }

  @managedTransientOutputAttribute
  List<String> get roles => rolesString.split(",");

  @managedTransientInputAttribute
  void set roles(List<String> t) {
    rolesString = t.join(",");
  }

  Map<String, dynamic> asMap() {
    var m = super.asMap();
    m.remove("buildsString");
    m.remove("rolesString");
    return m;
  }
}

class _Character {
  @managedPrimaryKey
  int id;

  @ManagedColumnAttributes(indexed: true, unique: true)
  String name;

  @ManagedColumnAttributes(unique: true)
  String serverName;

  String buildsString;
  String rolesString;
}
