import 'dart:async' show runZonedGuarded;

import 'package:arna_logger/arna_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:service_native_splash/service_native_splash.dart';
import 'package:service_orientations/service_orientations.dart';
import 'package:service_storage/service_storage.dart';

import '/src/app.dart';

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
