import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:injectable/injectable.dart';
import 'dart:io';

part 'repo_database.g.dart';

// Table definition (Entity)
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

@singleton
@DriftDatabase(tables: [RepoTable])
class RepoDatabase extends _$RepoDatabase {
  RepoDatabase()
    : super(
        NativeDatabase.memory(),
      ); // Use NativeDatabase(File(...)) for persistence in real app

  @override
  int get schemaVersion => 1;

  // DAO methods equivalent
  Future<List<RepoTableData>> getAllFavorites() => select(repoTable).get();

  Stream<List<RepoTableData>> watchAllFavorites() => select(repoTable).watch();

  Future<RepoTableData?> getFavoriteById(int id) {
    return (select(repoTable)..where((t) => t.id.equals(id))).getSingleOrNull();
  }

  Future<void> insertFavorite(RepoTableCompanion repo) {
    return into(repoTable).insert(repo, mode: InsertMode.replace);
  }

  Future<void> deleteFavorite(int id) {
    return (delete(repoTable)..where((t) => t.id.equals(id))).go();
  }

  Future<bool> isFavorite(int id) async {
    final query = select(repoTable)..where((t) => t.id.equals(id));
    final result = await query.getSingleOrNull();
    return result != null;
  }
}
