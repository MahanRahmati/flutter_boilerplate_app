// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_mode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appThemeModeHash() => r'd5565d27b4313c22f1bc030e3fb4acfc3101efb6';

/// AppThemeMode manages the application theme mode state.
///
/// It extends [_$AppThemeMode] which is the generated Riverpod class.
///
/// The [build] method returns the current [ThemeMode] by:
///
/// - Getting the persisted theme mode from local storage
/// - Mapping the stored bool to a [ThemeMode]
///
/// [setThemeMode] saves the given [ThemeMode] to local storage and updates
/// the state. It maps [ThemeMode] to a bool for storage.
///
/// This uses the Hive plugin for local storage.
///
/// Copied from [AppThemeMode].
@ProviderFor(AppThemeMode)
final appThemeModeProvider =
    AutoDisposeAsyncNotifierProvider<AppThemeMode, ThemeMode>.internal(
  AppThemeMode.new,
  name: r'appThemeModeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appThemeModeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppThemeMode = AutoDisposeAsyncNotifier<ThemeMode>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
