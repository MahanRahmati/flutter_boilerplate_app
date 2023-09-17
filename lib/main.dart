import 'dart:async' show runZonedGuarded;

import 'package:arna_logger/arna_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:service_native_splash/service_native_splash.dart';
import 'package:service_orientations/service_orientations.dart';
import 'package:service_storage/service_storage.dart';

import '/src/app.dart';

/// The main() method runs when the app starts. It initializes and runs the app.
///
/// This method:
///
/// 1. Calls runZonedGuarded to catch errors and log them.
///
/// 2. Initializes the widget bindings.
///
/// 3. Initializes the native splash screen.
///
/// 4. Sets the preferred device orientations.
///
/// 5. Initializes the local storage.
///
/// 6. Starts the app by running the App widget.
///
/// The runZonedGuarded callback logs any errors during startup to help
/// debug crashes.
Future<void> main() async {
  return runZonedGuarded(() async {
    final WidgetsBinding widgetsBinding =
        WidgetsFlutterBinding.ensureInitialized();
    await NativeSplash.instance.init(widgetsBinding);
    Orientations.setPreferredOrientations();
    await HiveStorageService.initialize();
    runApp(const ProviderScope(child: App()));
  }, (final Object error, final StackTrace stack) {
    arnaLogger(title: 'Run Stack', data: stack);
    arnaLogger(title: 'Run Error', data: error);
  });
}
