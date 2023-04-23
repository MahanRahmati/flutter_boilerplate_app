import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/src/modules/home/screens/home_screen.dart';
import '/src/modules/splash/screens/splash_screen.dart';
import '/src/routes/route_path.dart';

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
