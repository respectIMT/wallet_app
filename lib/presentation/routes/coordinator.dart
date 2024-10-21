import 'entity/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/presentation/pages/home/home_page.dart';
import 'package:wallet_app/presentation/pages/main/main_page.dart';
import 'package:wallet_app/presentation/pages/splash/splash_page.dart';

final GoRouter router = GoRouter(
    initialLocation: Routes.mainScreen.path,
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        name: Routes.splashScreen.name,
        path: Routes.splashScreen.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const SplashPage(),
        ),
      ),
      GoRoute(
        name: Routes.mainScreen.name,
        path: Routes.mainScreen.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const MainPage(),
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
