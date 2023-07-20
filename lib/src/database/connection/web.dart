import 'dart:async';

import 'package:drift/drift.dart';
import 'package:drift/wasm.dart';
import 'package:flutter/foundation.dart';

/// Obtains a database connection for running drift on the web.
DatabaseConnection connect() {
  return DatabaseConnection.delayed(
    Future<DatabaseConnection>(() async {
      final WasmDatabaseResult db = await WasmDatabase.open(
        databaseName: 'drift-app-database',
        sqlite3Uri: Uri.parse('/sqlite3.wasm'),
        driftWorkerUri: Uri.parse('/drift_worker.js'),
      );

      if (db.missingFeatures.isNotEmpty) {
        debugPrint(
          'Using ${db.chosenImplementation} due to unsupported '
          'browser features: ${db.missingFeatures}',
        );
      }

      return db.resolvedExecutor;
    }),
  );
}

Future<void> validateDatabaseSchema(final GeneratedDatabase database) async {
  // Unfortunately, validating database schemas only works for native platforms
  // right now.
  // As we also have migration tests (see the `Testing migrations` section in
  // the readme of this example), this is not a huge issue.
}
