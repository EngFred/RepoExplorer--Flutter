import 'package:flutter/material.dart';
import 'package:flutter_repoexplorer/domain/entity/repo.dart';
import 'package:flutter_repoexplorer/ui/common/repo_item.dart';
import 'package:flutter_repoexplorer/ui/providers/search_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:flutter_repoexplorer/ui/providers/favorites_provider.dart';

class SearchScreen extends ConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final query = ref.watch(searchProvider);
    final notifier = ref.watch(searchProvider.notifier);
    final pagingController = notifier.pagingController;
    final favoriteIds =
        ref.watch(favoritesProvider).value?.map((r) => r.id).toSet() ?? {};

    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: TextField(
                onChanged: notifier.updateQuery,
                decoration: InputDecoration(
                  hintText: 'Search GitHub...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: query.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () => notifier.updateQuery(''),
                        )
                      : null,
                  border: const OutlineInputBorder(),
                ),
                maxLines: 1,
              ),
            ),
            Expanded(
              child: PagingListener<int, Repo>(
                controller: pagingController,
                builder: (context, state, fetchNextPage) =>
                    PagedListView<int, Repo>(
                      state: state,
                      fetchNextPage: fetchNextPage,
                      builderDelegate: PagedChildBuilderDelegate<Repo>(
                        itemBuilder: (context, repo, index) {
                          final displayRepo = repo.copyWith(
                            isFavorite: favoriteIds.contains(repo.id),
                          );
                          return RepoItem(
                            repo: displayRepo,
                            onItemClick: (_) =>
                                context.push('/details/${repo.id}'),
                            onFavoriteClick: notifier.toggleFavorite,
                          );
                        },
                        noItemsFoundIndicatorBuilder: (context) => Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.search,
                                size: 64,
                                color: Color(0xFF30363D),
                              ),
                              const SizedBox(height: 16),
                              if (query.isEmpty) ...[
                                const Text(
                                  'Discover Repositories',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                ),
                                const Text(
                                  'Type to search...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ] else ...[
                                const Text(
                                  'No results found',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "We couldn't find anything for '$query'",
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ],
                            ],
                          ),
                        ),
                        firstPageProgressIndicatorBuilder: (context) =>
                            const Center(
                              child: CircularProgressIndicator(
                                color: Color(0xFF58A6FF),
                              ),
                            ),
                        newPageProgressIndicatorBuilder: (context) =>
                            const Center(
                              child: SizedBox(
                                width: 24,
                                height: 24,
                                child: CircularProgressIndicator(
                                  color: Color(0xFF58A6FF),
                                ),
                              ),
                            ),
                        // RETRY BUTTON for Initial Load
                        firstPageErrorIndicatorBuilder: (context) => Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'Something went wrong',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Could not load results. Please try again.',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const SizedBox(height: 16),
                              ElevatedButton.icon(
                                onPressed: fetchNextPage,
                                icon: const Icon(Icons.refresh),
                                label: const Text('Retry'),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF238636),
                                  foregroundColor: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // RETRY BUTTON for "Load More" (Infinite Scroll)
                        newPageErrorIndicatorBuilder: (context) => Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Center(
                            child: Column(
                              children: [
                                const Text(
                                  'Could not load more results',
                                  style: TextStyle(color: Color(0xFFDA3633)),
                                ),
                                TextButton.icon(
                                  onPressed: fetchNextPage,
                                  icon: const Icon(Icons.refresh, size: 16),
                                  label: const Text('Try Again'),
                                  style: TextButton.styleFrom(
                                    foregroundColor: const Color(0xFF58A6FF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
