// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appLanguageHash() => r'bf79f247003e9ffe0cf0855a05fad3cf05a2e6a9';

/// AppLanguage manages the selected application language.
///
/// It extends [_$AppLanguage] which is the generated Riverpod class.
///
/// The [build] method returns the current [AppLocale] by:
///
/// - Getting the persisted language code from local storage
/// - Parsing into an [AppLocale] using [AppLocaleUtils]
///
/// [setLocale] saves the provided [AppLocale] to local storage and updates
/// the state.
///
/// This uses the Hive plugin for local storage.
///
/// Copied from [AppLanguage].
@ProviderFor(AppLanguage)
final appLanguageProvider =
    AutoDisposeAsyncNotifierProvider<AppLanguage, AppLocale>.internal(
  AppLanguage.new,
  name: r'appLanguageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appLanguageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppLanguage = AutoDisposeAsyncNotifier<AppLocale>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
