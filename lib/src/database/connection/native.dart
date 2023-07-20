// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:drift_dev/api/migrations.dart';
import 'package:flutter/foundation.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

Future<File> get databaseFile async {
  // We use `path_provider` to find a suitable path to store our data in.
  final Directory appDir = await getApplicationDocumentsDirectory();
  final String dbPath = p.join(appDir.path, 'todos.db');
  return File(dbPath);
}

/// Obtains a database connection for running drift in a Dart VM.
DatabaseConnection connect() {
  return DatabaseConnection.delayed(
    Future<DatabaseConnection>(() async {
      return NativeDatabase.createBackgroundConnection(await databaseFile);
    }),
  );
}

Future<void> validateDatabaseSchema(final GeneratedDatabase database) async {
  // This method validates that the actual schema of the opened database matches
  // the tables, views, triggers and indices for which drift_dev has generated
  // code.
  // Validating the database's schema after opening it is generally a good idea,
  // since it allows us to get an early warning if we change a table definition
  // without writing a schema migration for it.
  //
  // For details, see: https://drift.simonbinder.eu/docs/advanced-features/migrations/#verifying-a-database-schema-at-runtime
  if (kDebugMode) {
    await VerifySelf(database).validateDatabaseSchema();
  }
}
