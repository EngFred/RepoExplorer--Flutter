import 'package:flutter_repoexplorer/domain/usecase/favorites_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_repoexplorer/domain/entity/repo.dart';

final favoritesProvider = StreamProvider.autoDispose<List<Repo>>((ref) {
  final useCase = GetIt.I<GetFavoritesUseCase>();
  return useCase();
});

final favoritesNotifierProvider = NotifierProvider<FavoritesNotifier, void>(
  FavoritesNotifier.new,
);

class FavoritesNotifier extends Notifier<void> {
  late final ToggleFavoriteUseCase _toggleFavoriteUseCase;

  @override
  void build() {
    _toggleFavoriteUseCase = GetIt.I<ToggleFavoriteUseCase>();
  }

  Future<void> removeFavorite(Repo repo) async {
    await _toggleFavoriteUseCase(repo);
  }
}
