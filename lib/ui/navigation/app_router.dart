import 'package:flutter/material.dart';
import 'package:flutter_repoexplorer/ui/screens/details_screen.dart';
import 'package:flutter_repoexplorer/ui/screens/favorites_screen.dart';
import 'package:flutter_repoexplorer/ui/screens/search_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/services.dart';

final _searchNavigatorKey = GlobalKey<NavigatorState>();
final _favoritesNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          _BottomBarShell(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _searchNavigatorKey,
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const SearchScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _favoritesNavigatorKey,
          routes: [
            GoRoute(
              path: '/favorites',
              builder: (context, state) => const FavoritesScreen(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/details/:repoId',
      builder: (context, state) =>
          DetailsScreen(repoId: int.parse(state.pathParameters['repoId']!)),
    ),
  ],
);

class _BottomBarShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const _BottomBarShell({required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        if (navigationShell.currentIndex != 0) {
          navigationShell.goBranch(0);
        } else {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: navigationShell,
        bottomNavigationBar: NavigationBar(
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (index) {
            navigationShell.goBranch(index);
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
            NavigationDestination(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
          ],
        ),
      ),
    );
  }
}
