import 'package:app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:service_native_splash/service_native_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      NativeSplash.instance.remove();
    });
    _goToHomeScreen();
  }

  void _goToHomeScreen() {
    Future<void>.delayed(const Duration(seconds: 1)).then(
      (final _) => context.pushReplacementNamed(RoutesName.home),
    );
  }

  @override
  Widget build(final BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
