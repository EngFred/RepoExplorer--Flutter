import 'package:drift/drift.dart';

class RepoTable extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get fullName => text()();
  TextColumn get description => text().nullable()();
  TextColumn get ownerAvatarUrl => text()();
  IntColumn get stars => integer()();
  IntColumn get forks => integer()();
  IntColumn get watchers => integer()();
  IntColumn get openIssues => integer()();
  TextColumn get language => text().nullable()();
  TextColumn get htmlUrl => text()();

  @override
  Set<Column> get primaryKey => {id};
}
