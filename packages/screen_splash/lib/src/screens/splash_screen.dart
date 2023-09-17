import 'package:app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:service_native_splash/service_native_splash.dart';

/// SplashScreen widget displays a splash screen when the app first launches.
///
/// This is a StatefulWidget that creates a [_SplashScreenState] to
/// manage the splash screen behavior.
///
/// It does not take any parameters in its constructor.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

/// [_SplashScreenState] manages the state and behavior of the splash screen.
///
/// When initialized, it:
///
/// - Calls [_removeNativeSplash] to remove the native splash screen after the
///   first frame is rendered.
///
/// - Calls [_goToHomeScreen] to navigate to the home screen after a 1 second
///   delay.
///
/// The [build] method returns a simple scaffold with a centered flutter
/// logo to display while transitioning.
///
/// This class extends [State] for the [SplashScreen] widget.
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _removeNativeSplash();
    _goToHomeScreen();
  }

  void _removeNativeSplash() {
    WidgetsBinding.instance.addPostFrameCallback((final _) {
      NativeSplash.instance.remove();
    });
  }

  void _goToHomeScreen() {
    Future<void>.delayed(const Duration(seconds: 1)).then(
      (final _) => const HomeRoute().pushReplacement(context),
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
