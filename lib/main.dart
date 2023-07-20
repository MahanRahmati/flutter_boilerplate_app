import 'dart:async' show runZonedGuarded;

import 'package:arna_logger/arna_logger.dart';
import 'package:flutter/material.dart';

import '/src/app.dart';
import '/src/services/get_it_service.dart';
import '/src/services/hive_storage.dart';
import '/src/services/native_splash.dart';
import '/src/services/orientations.dart';

Future<void> main() async {
  return runZonedGuarded(() async {
    final WidgetsBinding widgetsBinding =
        WidgetsFlutterBinding.ensureInitialized();
    await NativeSplash.instance.init(widgetsBinding);
    Orientations.setPreferredOrientations();
    await HiveStorage.instance.init();
    setupDependencies();
    runApp(const App());
  }, (final Object error, final StackTrace stack) {
    arnaLogger(title: 'Run Stack', data: stack);
    arnaLogger(title: 'Run Error', data: error);
  });
}
