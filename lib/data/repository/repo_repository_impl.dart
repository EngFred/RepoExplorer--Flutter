import 'package:flutter_repoexplorer/data/local/repo_dao.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entity/repo.dart';
import '../../domain/repository/repo_repository.dart';
import '../mapper/repo_mapper.dart';
import '../remote/github_api.dart';

@Injectable(as: RepoRepository)
class RepoRepositoryImpl implements RepoRepository {
  final GithubApi _api;
  final RepoDao _dao;

  RepoRepositoryImpl(this._api, this._dao);

  @override
  Future<List<Repo>> searchRepos({
    required String query,
    required int page,
    required int pageSize,
  }) async {
    // We don't check favorites here for list performance
    final dto = await _api.searchRepos(query, page, pageSize);
    return dto.items.map((e) => e.toDomain()).toList();
  }

  @override
  Stream<List<Repo>> getFavoriteRepos() {
    return _dao.watchAllFavorites().map(
      (entities) => entities.map((e) => e.toDomain()).toList(),
    );
  }

  @override
  Future<void> toggleFavorite(Repo repo) async {
    final isFav = await _dao.isFavorite(repo.id);
    if (isFav) {
      await _dao.deleteFavorite(repo.id);
    } else {
      await _dao.insertFavorite(repo.toCompanion());
    }
  }

  @override
  Future<bool> isRepoFavorite(int repoId) {
    return _dao.isFavorite(repoId);
  }

  @override
  Future<Repo> getRepo(int id) async {
    // 1. Check local favorite status
    final isFavorite = await _dao.isFavorite(id);

    try {
      // 2. Network First
      final dto = await _api.getRepo(id);
      return dto.toDomain(isFavorite: isFavorite);
    } catch (e) {
      // 3. Fallback to Local
      final localRepo = await _dao.getFavoriteById(id);
      if (localRepo != null) {
        return localRepo.toDomain();
      }
      rethrow;
    }
  }
}
