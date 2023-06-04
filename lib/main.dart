import 'dart:async' show runZonedGuarded;

import 'package:arna_logger/arna_logger.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '/src/app.dart';
import '/src/services/hive_storage.dart';
import '/src/services/native_splash.dart';
import '/src/services/orientations.dart';

Future<void> main() async {
  return runZonedGuarded(() async {
    final WidgetsBinding widgetsBinding =
        WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    await NativeSplash.instance.init(widgetsBinding);
    Orientations.setPreferredOrientations();
    await HiveStorage.instance.init();
    runApp(
      EasyLocalization(
        supportedLocales: const <Locale>[Locale('en', 'US')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en', 'US'),
        child: const App(),
      ),
    );
  }, (final Object error, final StackTrace stack) {
    arnaLogger(title: 'Run Stack', data: stack);
    arnaLogger(title: 'Run Error', data: error);
  });
}
