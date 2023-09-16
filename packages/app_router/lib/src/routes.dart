import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_home/screen_home.dart';
import 'package:screen_splash/screen_splash.dart';

import 'routes_name.dart';
import 'routes_path.dart';

class Routes {
  Routes._();

  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: RoutesPath.splash,
        name: RoutesName.splash,
        builder: (final BuildContext context, final GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: RoutesPath.home,
        name: RoutesName.home,
        builder: (final BuildContext context, final GoRouterState state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
