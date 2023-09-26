import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/presentation/pages/home/home_page.dart';

import 'entity/routes.dart';

final GoRouter router = GoRouter(
    initialLocation: Routes.splashscreen.path,
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      // GoRoute(
      //   name: Routes.splashscreen.name,
      //   path: Routes.splashscreen.path,
      //   pageBuilder: (context, state) => MaterialPage<void>(
      //     key: state.pageKey,
      //     child: const SplashScreen(),
      //   ),
      // ),
      // GoRoute(
      //   name: Routes.security.name,
      //   path: Routes.security.path,
      //   pageBuilder: (context, state) => MaterialPage<void>(
      //     key: state.pageKey,
      //     child:  SecurityPage(type: state.extra as String),
      //   ),
      // ),
      // GoRoute(
      //   name: Routes.addexpenses.name,
      //   path: Routes.addexpenses.path,
      //   pageBuilder: (context, state) => MaterialPage<void>(
      //     key: state.pageKey,
      //     child: const AddExpensesPage(),
      //   ),
      // ),
      // GoRoute(
      //   name: Routes.registration.name,
      //   path: Routes.registration.path,
      //   pageBuilder: (context, state) => MaterialPage<void>(
      //     key: state.pageKey,
      //     child: const RegistrationPage(),
      //   ),
      // ),
      GoRoute(
        name: Routes.home.name,
        path: Routes.home.path,
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const HomePage(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const SizedBox());
