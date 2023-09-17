import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:screen_home/screen_home.dart';
import 'package:screen_splash/screen_splash.dart';

import 'routes_name.dart';
import 'routes_path.dart';

part 'routes.g.dart';

/// Routes class defines the router for the application.
///
/// The router is created using the GoRouter package and contains
/// the defined routes for the app.
class Routes {
  Routes._();

  static final GoRouter router = GoRouter(
    routes: $appRoutes,
  );
}

/// SplashRoute defines the route for displaying the splash screen.
///
/// This class extends [GoRouteData] to create a typed route definition.
///
/// The splash screen is displayed when the app is first launched while
/// it initializes and determines which screen to navigate to next.
///
/// The [build] method returns a [SplashScreen] widget to display.
///
/// This route does not take any parameters.
@TypedGoRoute<SplashRoute>(
  path: RoutesPath.splash,
  name: RoutesName.splash,
)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  @override
  Widget build(final BuildContext context, final GoRouterState state) {
    return const SplashScreen();
  }
}

/// HomeRoute defines the route to the main home screen.
///
/// This class extends [GoRouteData] to create a typed route definition.
///
/// The home screen is the main screen displayed after the splash screen.
/// It is the central screen that users will interact with most.
///
/// The [build] method returns the [HomeScreen] widget to display.
///
/// This route does not take any parameters.
@TypedGoRoute<HomeRoute>(
  path: RoutesPath.home,
  name: RoutesName.home,
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(final BuildContext context, final GoRouterState state) {
    return const HomeScreen();
  }
}
