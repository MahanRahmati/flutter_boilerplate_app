import 'package:hive_flutter/hive_flutter.dart';

class HiveStorage {
  HiveStorage._();

  late Box<dynamic> _box;
  static final HiveStorage instance = HiveStorage._();

  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('storage');
  }

  // ignore: unused_element
  Future<void> _clear() async {
    await _box.clear();
  }

  // ignore: unused_element
  Future<void> _delete(final String key) async {
    await _box.delete(key);
  }

  dynamic _get(final String key) async {
    await _box.get(key);
  }

  Future<void> _put(final String key, final dynamic value) async {
    await _box.put(key, value);
  }

  /// Theme mode
  static const String _themeModeKey = 'themeMode';
  bool? get themeMode => _get(_themeModeKey) as bool?;
  Future<void> setThemeMode({final bool? themeMode}) async {
    await _put(_themeModeKey, themeMode);
  }
}
