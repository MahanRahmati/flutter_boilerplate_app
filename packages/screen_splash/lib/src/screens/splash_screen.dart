import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/splash_screen_provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return ChangeNotifierProvider<SplashScreenProvider>(
      create: (final _) => SplashScreenProvider(context),
      child: const _SplashScreen(),
    );
  }
}

class _SplashScreen extends StatelessWidget {
  const _SplashScreen();

  @override
  Widget build(final BuildContext context) {
    context.watch<SplashScreenProvider>();
    return const Scaffold(
      body: Center(
        child: FlutterLogo(),
      ),
    );
  }
}
