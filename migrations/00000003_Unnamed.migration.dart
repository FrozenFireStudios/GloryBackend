import 'package:aqueduct/aqueduct.dart';
import 'dart:async';

class Migration3 extends Migration {
  Future upgrade() async {
    database.alterColumn("_participant", "characterName", (p) {
      p.isIndexed = true;
    });

    database.alterColumn("_matchup", "character", (m) {
      m.isIndexed = false;
    });

    database.deleteColumn("_matchup", "againstValue");
    database.deleteColumn("_matchup", "withValue");

    database.addColumn("_matchup", new SchemaColumn("gamesAgainst", ManagedPropertyType.integer, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false));
    database.addColumn("_matchup", new SchemaColumn("gamesAgainstWon", ManagedPropertyType.integer, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false));
    database.addColumn("_matchup", new SchemaColumn("gamesWith", ManagedPropertyType.integer, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false));
    database.addColumn("_matchup", new SchemaColumn("gamesWithWon", ManagedPropertyType.integer, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false));
  }

  Future downgrade() async {
  }
  Future seed() async {
  }
}
