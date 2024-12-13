import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:service_native_splash/service_native_splash.dart';
import 'package:service_orientations/service_orientations.dart';
import 'package:service_storage/service_storage.dart';

import '/src/app.dart';

/// The main method runs when the app starts. It initializes and runs the app.
///
/// This method:
///
/// 1. Initializes the widget bindings.
///
/// 2. Initializes the native splash screen.
///
/// 3. Sets the preferred device orientations.
///
/// 4. Initializes the local storage.
///
/// 5. Starts the app by running the App widget.
Future<void> main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  await NativeSplash.instance.init(widgetsBinding);
  Orientations.setPreferredOrientations();
  await HiveStorageService.initialize();
  runApp(const ProviderScope(child: App()));
}
