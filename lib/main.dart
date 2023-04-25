import 'dart:async';

import 'package:arna_logger/arna_logger.dart';
import 'package:flutter/material.dart';

import '/src/app.dart';
import '/src/services/hive_storage.dart';
import '/src/services/orientations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Orientations.setPreferredOrientations();
  await HiveStorage.instance.init();
  return runZonedGuarded(() async {
    runApp(const App());
  }, (final Object error, final StackTrace stack) {
    arnaLogger(title: 'Run Stack', data: stack);
    arnaLogger(title: 'Run Error', data: error);
  });
}
