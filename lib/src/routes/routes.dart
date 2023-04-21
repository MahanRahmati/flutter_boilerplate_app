import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/src/modules/home/screens/home_screen.dart';

class Routes {
  Routes._();

  static final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (final BuildContext context, final GoRouterState state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
