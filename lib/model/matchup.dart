import '../glory_backend.dart';

class Matchup extends ManagedObject<_Matchup> implements _Matchup {

}

class _Matchup {
  @managedPrimaryKey
  int id;

  String character;
  String otherCharacter;
  int againstValue;
  int withValue;
}
