import 'package:injectable/injectable.dart';
import '../../domain/entity/repo.dart';
import '../../domain/repository/repo_repository.dart';
import '../local/repo_database.dart';
import '../mapper/repo_mapper.dart';
import '../remote/github_api.dart';

@Injectable(as: RepoRepository)
class RepoRepositoryImpl implements RepoRepository {
  final GithubApi _api;
  final RepoDatabase _db;

  RepoRepositoryImpl(this._api, this._db);

  @override
  Future<List<Repo>> searchRepos({
    required String query,
    required int page,
    required int pageSize,
  }) async {
    // Note: We don't check favorites here for list performance,
    // but in a real app you might want to map favorites to check 'isFavorite' flag.
    final dto = await _api.searchRepos(query, page, pageSize);
    return dto.items.map((e) => e.toDomain()).toList();
  }

  @override
  Stream<List<Repo>> getFavoriteRepos() {
    return _db.watchAllFavorites().map(
      (entities) => entities.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<void> toggleFavorite(Repo repo) async {
    final isFav = await _db.isFavorite(repo.id);
    if (isFav) {
      await _db.deleteFavorite(repo.id);
    } else {
      await _db.insertFavorite(repo.toCompanion());
    }
  }

  @override
  Future<bool> isRepoFavorite(int repoId) {
    return _db.isFavorite(repoId);
  }

  @override
  Future<Repo> getRepo(int id) async {
    // 1. Check local favorite status
    final isFavorite = await _db.isFavorite(id);

    try {
      // 2. Network First
      final dto = await _api.getRepo(id);
      return dto.toDomain(isFavorite: isFavorite);
    } catch (e) {
      // 3. Fallback to Local
      final localRepo = await _db.getFavoriteById(id);
      if (localRepo != null) {
        return localRepo.toDomain();
      }
      rethrow;
    }
  }
}
