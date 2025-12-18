import 'dart:async';

import 'package:flutter_repoexplorer/domain/usecase/search_repos_usecase.dart';
import 'package:flutter_repoexplorer/domain/usecase/favorites_usecases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:flutter_repoexplorer/domain/entity/repo.dart';

final searchProvider = NotifierProvider<SearchNotifier, String>(
  SearchNotifier.new,
);

class SearchNotifier extends Notifier<String> {
  late final SearchReposUseCase _searchReposUseCase;
  late final ToggleFavoriteUseCase _toggleFavoriteUseCase;
  late final PagingController<int, Repo> pagingController;
  static const int _pageSize = 20;
  Timer? _debounceTimer;
  static const Duration _debounceDuration = Duration(milliseconds: 300);

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
        try {
          return _searchReposUseCase(
            query: this.state,
            page: pageKey,
            pageSize: _pageSize,
          );
        } catch (e) {
          rethrow;
        }
      },
    );

    // Set initial empty state to avoid loading indicator on app open
    pagingController.value = PagingState<int, Repo>(pages: [], keys: []);

    ref.onDispose(() {
      _debounceTimer?.cancel();
      pagingController.dispose();
    });
    return '';
  }

  void updateQuery(String newQuery) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(_debounceDuration, () {
      if (newQuery != state) {
        if (newQuery.isEmpty) {
          pagingController.value = PagingState<int, Repo>(pages: [], keys: []);
        } else {
          pagingController.refresh();
        }
        state = newQuery;
      }
    });
  }

  Future<void> toggleFavorite(Repo repo) async {
    await _toggleFavoriteUseCase(repo);
  }
}
