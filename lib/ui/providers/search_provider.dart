import 'package:flutter_repoexplorer/domain/usecase/search_repos_usecase.dart';
import 'package:flutter_repoexplorer/domain/usecase/favorites_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:flutter_repoexplorer/domain/entity/repo.dart';

// Optional: Add .autoDispose if you want to reset query/paging on navigation away/back (matches Kotlin ViewModel scoping).
// final searchProvider = NotifierProvider.autoDispose<SearchNotifier, String>(SearchNotifier.new);
final searchProvider = NotifierProvider<SearchNotifier, String>(
  SearchNotifier.new,
);

class SearchNotifier extends Notifier<String> {
  late final SearchReposUseCase _searchReposUseCase;
  late final ToggleFavoriteUseCase _toggleFavoriteUseCase;
  late final PagingController<int, Repo> pagingController;
  static const int _pageSize = 20;

  @override
  String build() {
    _searchReposUseCase = GetIt.I<SearchReposUseCase>();
    _toggleFavoriteUseCase = GetIt.I<ToggleFavoriteUseCase>();

    pagingController = PagingController<int, Repo>(
      getNextPageKey: (state) {
        if (this.state.isEmpty) return null;
        if (state.pages?.isEmpty ?? true) return 1;
        if (state.pages!.last.length < _pageSize) return null;
        return state.keys!.last + 1;
      },
      fetchPage: (pageKey) async {
        if (this.state.isEmpty) return [];
        return _searchReposUseCase(
          query: this.state,
          page: pageKey,
          pageSize: _pageSize,
        );
      },
    );

    ref.onDispose(pagingController.dispose);
    return '';
  }

  void updateQuery(String newQuery) {
    if (newQuery != state) {
      state = newQuery;
      pagingController.refresh();
    }
  }

  Future<void> toggleFavorite(Repo repo) async {
    await _toggleFavoriteUseCase(repo);
  }
}
