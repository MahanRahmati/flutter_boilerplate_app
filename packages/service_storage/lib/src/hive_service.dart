import 'dart:io' show Directory, exit;

import 'package:arna_logger/arna_logger.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

/// Interfaces with the host OS to store & retrieve data from disk.
class HiveStorageService {
  /// Private singleton constructor.
  HiveStorageService._singleton();

  /// This class is a singleton.
  /// Singleton instance of the service.
  static HiveStorageService? instance;

  /// Initialize the storage access and [instance].
  /// Needs to be initialized only once, in the `main()` function.
  static Future<HiveStorageService> initialize() async {
    if (instance != null) {
      return instance!;
    }

    final Directory dir = await getApplicationSupportDirectory();
    Hive.initFlutter('${dir.path}/storage');

    instance = HiveStorageService._singleton();
    return instance!;
  }

  /// A generic storage pool, anything large should make its own box.
  static const String _generalBox = 'general';

  /// Persist a value to local disk storage.
  Future<void> setValue({
    required final String key,
    required final dynamic value,
    final String? storageName,
  }) async {
    final Box<dynamic> box = await _getBox(storageName);
    await box.put(key, value);
  }

  /// Get a value from local disk storage.
  ///
  /// If the [key] doesn't exist, `null` is returned.
  Future<T> getValue<T>(
    final String key, {
    final String? storageName,
  }) async {
    final Box<dynamic> box = await _getBox(storageName);
    return box.get(key) as T;
  }

  /// Delete a key from storage.
  Future<void> deleteValue(
    final String key, {
    final String? storageName,
  }) async {
    final Box<dynamic> box = await _getBox(storageName);
    await box.delete(key);
  }

  /// Get a Hive storage box, either the one associated with
  /// [storageName], or the general storage box.
  Future<Box<dynamic>> _getBox(final String? storageName) async {
    try {
      return await Hive.openBox(storageName ?? _generalBox);
    } on Exception catch (e) {
      arnaLogger(title: 'Unable to access storage', data: e);
      exit(1);
    }
  }
}
