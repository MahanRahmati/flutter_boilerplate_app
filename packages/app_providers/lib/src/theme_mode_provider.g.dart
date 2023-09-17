// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_mode_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appThemeModeHash() => r'eaaca1cd36a96d9007e98fcc23004b2ef55a2de7';

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
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
