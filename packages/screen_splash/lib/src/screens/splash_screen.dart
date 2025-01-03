import 'package:app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:service_native_splash/service_native_splash.dart';

/// SplashScreen widget displays a splash screen when the app first launches.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _removeNativeSplashAndNavigate();
  }

  void _removeNativeSplashAndNavigate() {
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      NativeSplash.instance.remove();
      const HomeRoute().pushReplacement(context);
    });
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
