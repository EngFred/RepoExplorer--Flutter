import 'package:flutter/material.dart';
import 'package:flutter_repoexplorer/ui/screens/details_screen.dart';
import 'package:flutter_repoexplorer/ui/screens/favorites_screen.dart';
import 'package:flutter_repoexplorer/ui/screens/search_screen.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    ShellRoute(
      builder: (context, state, child) => _BottomBarShell(child: child),
      routes: [
        GoRoute(path: '/', builder: (context, state) => const SearchScreen()),
        GoRoute(
          path: '/favorites',
          builder: (context, state) => const FavoritesScreen(),
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

class _BottomBarShell extends StatefulWidget {
  final Widget child;

  const _BottomBarShell({required this.child});

  @override
  State<_BottomBarShell> createState() => _BottomBarShellState();
}

class _BottomBarShellState extends State<_BottomBarShell> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) {
          setState(() => _currentIndex = index);
          if (index == 0) {
            context.go('/');
          } else {
            context.go('/favorites');
          }
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites'),
        ],
      ),
    );
  }
}
