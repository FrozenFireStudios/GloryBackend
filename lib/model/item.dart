import '../glory_backend.dart';

class Item extends ManagedObject<_Item> implements _Item {
  @managedTransientOutputAttribute
  List<String> get aliases => aliasString.split(",");

  @managedTransientInputAttribute
  void set aliases(List<String> a) {
    aliasString = a.join(",");
  }

  @managedTransientOutputAttribute
  List<String> get types => typesString.split(",");

  @managedTransientInputAttribute
  void set types(List<String> t) {
    typesString = t.join(",");
  }

  Map<String, dynamic> asMap() {
    var m = super.asMap();
    m.remove("aliasString");
    m.remove("typesString");
    return m;
  }
}

class _Item {
  @managedPrimaryKey
  int id;

  @ManagedColumnAttributes(unique: true, indexed: true)
  String name;

  String aliasString;
  int cost;
  String description;
  String typesString;
  int tier;
}