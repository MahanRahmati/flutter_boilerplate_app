import 'package:flutter/material.dart';

import '/src/app.dart';
import '/src/services/hive_storage.dart';
import '/src/services/orientations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Orientations.setPreferredOrientations();
  await HiveStorage.instance.init();
  runApp(const App());
}
