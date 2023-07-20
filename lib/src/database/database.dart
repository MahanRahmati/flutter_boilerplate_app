import 'package:drift/drift.dart';

import 'connection/connection.dart' as impl;

part 'database.g.dart';

@DriftDatabase(tables: <Type>[])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(impl.connect());

  AppDatabase.forTesting(super.connection);

  @override
  int get schemaVersion => 1;
}
