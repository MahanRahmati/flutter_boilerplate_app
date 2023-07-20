import 'package:get_it/get_it.dart';

import '/src/database/database.dart';

final GetIt getIt = GetIt.instance;

void setupDependencies() {
  getIt.registerSingleton<AppDatabase>(AppDatabase());
}
