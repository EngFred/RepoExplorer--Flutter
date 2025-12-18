import 'package:flutter_repoexplorer/domain/usecase/get_repo_usecase.dart';
import 'package:flutter_repoexplorer/domain/usecase/favorites_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_repoexplorer/domain/entity/repo.dart';

final detailsProvider = AsyncNotifierProvider.autoDispose
    .family<DetailsNotifier, Repo, int>(DetailsNotifier.new);

class DetailsNotifier extends AsyncNotifier<Repo> {
  DetailsNotifier(this.arg);
  final int arg;

  late final GetRepoUseCase _getRepoUseCase;
  late final ToggleFavoriteUseCase _toggleFavoriteUseCase;

  @override
  Future<Repo> build() async {
    _getRepoUseCase = GetIt.I<GetRepoUseCase>();
    _toggleFavoriteUseCase = GetIt.I<ToggleFavoriteUseCase>();
    return _getRepoUseCase(arg);
  }

  Future<void> toggleFavorite() async {
    final repo = state.value!;
    await _toggleFavoriteUseCase(repo);
    state = AsyncValue.data(repo.copyWith(isFavorite: !repo.isFavorite));
  }
}
