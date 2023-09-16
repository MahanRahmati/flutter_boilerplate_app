import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_home/screen_home.dart';
import 'package:screen_splash/screen_splash.dart';

import 'routes_name.dart';
import 'routes_path.dart';

/// Routes class defines the router for the application.
///
/// The router is created using the GoRouter package and contains
/// the defined routes for the app.
///
/// The routes use the route names from [RoutesName] and paths
/// from [RoutesPath] for consistency.
///
/// The builder for each route returns the screen widget to display
/// for that route.
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
