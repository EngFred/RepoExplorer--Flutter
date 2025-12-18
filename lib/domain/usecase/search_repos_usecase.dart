import 'package:injectable/injectable.dart';
import '../entity/repo.dart';
import '../repository/repo_repository.dart';

@injectable
class SearchReposUseCase {
  final RepoRepository _repository;

  SearchReposUseCase(this._repository);

  Future<List<Repo>> call({
    required String query,
    required int page,
    int pageSize = 20,
  }) {
    return _repository.searchRepos(
      query: query,
      page: page,
      pageSize: pageSize,
    );
  }
}
