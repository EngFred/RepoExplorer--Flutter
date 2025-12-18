import 'package:flutter/material.dart';
import 'package:flutter_repoexplorer/di/injection.dart';
import 'package:flutter_repoexplorer/ui/navigation/app_router.dart';
import 'package:flutter_repoexplorer/ui/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  configureDependencies();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Repo Explorer',
      theme: githubDarkTheme,
      routerConfig: appRouter,
    );
  }
}
