import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/presentation/pages/home/home_page.dart';
import 'package:wallet_app/presentation/pages/main_screen.dart';
import 'package:wallet_app/presentation/pages/splash/splash_page.dart';

import 'entity/routes.dart';

final GoRouter router = GoRouter(
    initialLocation: Routes.mainScreen.path,
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        name: Routes.splashScreen.name,
        path: Routes.splashScreen.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        name: Routes.mainScreen.name,
        path: Routes.mainScreen.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const MainScreen(),
        ),
      ),
      GoRoute(
        name: Routes.homePage.name,
        path: Routes.homePage.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const HomePage(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const SizedBox());
