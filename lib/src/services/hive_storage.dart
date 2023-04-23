import 'package:hive_flutter/hive_flutter.dart';

class HiveStorage {
  HiveStorage._();

  late Box<dynamic> _box;
  static final HiveStorage instance = HiveStorage._();

  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('storage');
  }

  /// Theme mode
  static const String _themeModeKey = 'themeMode';
  bool? get themeMode => _box.get(_themeModeKey) as bool?;
  Future<void> setThemeMode({final bool? themeMode}) async {
    await _box.put(_themeModeKey, themeMode);
  }
}
