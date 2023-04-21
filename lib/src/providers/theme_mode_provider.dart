import 'package:flutter/material.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';

import '/src/services/hive_storage.dart';

class ThemeModeProvider extends SafeChangeNotifier {
  ThemeModeProvider() {
    init();
  }
  ThemeMode selectedThemeMode = ThemeMode.system;

  void init() {
    final bool? themeMode = HiveStorage.instance.themeMode;
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

  void setThemeMode(final ThemeMode themeMode) {
    selectedThemeMode = themeMode;
    switch (themeMode) {
      case ThemeMode.dark:
        HiveStorage.instance.setThemeMode(themeMode: true);
        break;
      case ThemeMode.light:
        HiveStorage.instance.setThemeMode(themeMode: false);
        break;
      case ThemeMode.system:
        HiveStorage.instance.setThemeMode();
        break;
    }
    notifyListeners();
  }
}
