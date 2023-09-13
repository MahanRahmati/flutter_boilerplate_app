import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:service_native_splash/service_native_splash.dart';

import '/src/routes/route_path.dart';

class SplashScreenProvider extends SafeChangeNotifier {
  SplashScreenProvider(this.context) {
    _init();
  }

  final BuildContext context;

  Future<void> _init() async {
    NativeSplash.instance.remove();
    Future<void>.delayed(const Duration(seconds: 1)).then(
      (final _) => context.pushReplacement(RoutePath.home),
    );
  }
}
