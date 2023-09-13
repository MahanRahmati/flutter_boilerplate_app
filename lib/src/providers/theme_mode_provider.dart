import 'package:flutter/material.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';
import 'package:service_storage/service_storage.dart';

class ThemeModeProvider extends SafeChangeNotifier {
  ThemeModeProvider() {
    init();
  }
  ThemeMode selectedThemeMode = ThemeMode.system;

  static const String _storageName = 'theme';
  static const String _storageKey = 'themeKey';

  Future<void> init() async {
    final bool? themeMode = await HiveStorageService.instance?.getValue<bool?>(
      _storageKey,
      storageName: _storageName,
    );
    switch (themeMode) {
      case true:
        selectedThemeMode = ThemeMode.dark;
        break;
      case false:
        selectedThemeMode = ThemeMode.light;
        break;
      case null:
        selectedThemeMode = ThemeMode.system;
        break;
    }
    notifyListeners();
  }

  Future<void> setThemeMode(final ThemeMode themeMode) async {
    selectedThemeMode = themeMode;
    final bool? value;
    switch (themeMode) {
      case ThemeMode.dark:
        value = true;
        break;
      case ThemeMode.light:
        value = false;
        break;
      case ThemeMode.system:
        value = null;
        break;
    }
    await HiveStorageService.instance?.setValue(
      key: _storageKey,
      value: value,
      storageName: _storageName,
    );
    notifyListeners();
  }
}
