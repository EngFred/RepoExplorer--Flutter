import '../entity/repo.dart';

abstract class RepoRepository {
  // Search returns a Future of a List (per page) rather than a Stream of PagingData
  Future<List<Repo>> searchRepos({
    required String query,
    required int page,
    required int pageSize,
  });

  // Favorites are local operations (Stream for real-time updates)
  Stream<List<Repo>> getFavoriteRepos();

  Future<void> toggleFavorite(Repo repo);

  Future<bool> isRepoFavorite(int repoId);

  Future<Repo> getRepo(int id);
}
