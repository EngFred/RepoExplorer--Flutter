import 'package:injectable/injectable.dart';
import '../entity/repo.dart';
import '../repository/repo_repository.dart';

@injectable
class GetFavoritesUseCase {
  final RepoRepository _repository;
  GetFavoritesUseCase(this._repository);

  Stream<List<Repo>> call() => _repository.getFavoriteRepos();
}

@injectable
class ToggleFavoriteUseCase {
  final RepoRepository _repository;
  ToggleFavoriteUseCase(this._repository);

  Future<void> call(Repo repo) => _repository.toggleFavorite(repo);
}

@injectable
class CheckFavoriteUseCase {
  final RepoRepository _repository;
  CheckFavoriteUseCase(this._repository);

  Future<bool> call(int id) => _repository.isRepoFavorite(id);
}
