import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:service_storage/service_storage.dart';

part 'theme_mode_provider.g.dart';

@riverpod
class AppThemeMode extends _$AppThemeMode {
  static const String _storageName = 'theme';
  static const String _storageKey = 'themeKey';

  @override
  Future<ThemeMode> build() async {
    final bool? themeMode = await HiveStorageService.instance?.getValue<bool?>(
      _storageKey,
      storageName: _storageName,
    );
    switch (themeMode) {
      case true:
        return ThemeMode.dark;
      case false:
        return ThemeMode.light;
      case null:
        return ThemeMode.system;
    }
  }

  Future<void> setThemeMode(final ThemeMode themeMode) async {
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
    state = AsyncData<ThemeMode>(themeMode);
  }
}
