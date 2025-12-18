import '../entity/repo.dart';

abstract class RepoRepository {
  Future<List<Repo>> searchRepos({
    required String query,
    required int page,
    required int pageSize,
  });

  Stream<List<Repo>> getFavoriteRepos();

  Future<void> toggleFavorite(Repo repo);

  Future<bool> isRepoFavorite(int repoId);

  Future<Repo> getRepo(int id);
}
