import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_home/screen_home.dart';
import 'package:screen_splash/screen_splash.dart';

import 'route_path.dart';

class Routes {
  Routes._();

  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: RoutePath.splash,
        builder: (final BuildContext context, final GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: RoutePath.home,
        builder: (final BuildContext context, final GoRouterState state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
