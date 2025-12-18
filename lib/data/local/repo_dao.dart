import 'package:drift/drift.dart';
import 'package:flutter_repoexplorer/data/local/repo_database.dart';
import 'package:flutter_repoexplorer/data/local/entity/repo_table.dart';
import 'package:injectable/injectable.dart';

part 'repo_dao.g.dart';

@lazySingleton
@DriftAccessor(tables: [RepoTable])
class RepoDao extends DatabaseAccessor<RepoDatabase> with _$RepoDaoMixin {
  RepoDao(super.db);

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
