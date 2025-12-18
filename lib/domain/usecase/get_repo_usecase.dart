import 'package:injectable/injectable.dart';
import '../entity/repo.dart';
import '../repository/repo_repository.dart';

@injectable
class GetRepoUseCase {
  final RepoRepository _repository;

  GetRepoUseCase(this._repository);

  Future<Repo> call(int id) {
    return _repository.getRepo(id);
  }
}
