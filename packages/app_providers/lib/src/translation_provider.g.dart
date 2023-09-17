// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$translationHash() => r'8f437354a1708844b93a552276f4c1ae6b3c206c';

/// translation returns the translated strings for the current app locale.
///
/// It takes a [TranslationRef] which provides access to providers.
///
/// It gets the current [AppLocale] from [appLanguageProvider].
///
/// If no locale is set, it defaults to English.
///
/// It returns the localized [StringsEn] for the locale.
///
/// Copied from [translation].
@ProviderFor(translation)
final translationProvider = AutoDisposeProvider<StringsEn>.internal(
  translation,
  name: r'translationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$translationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TranslationRef = AutoDisposeProviderRef<StringsEn>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
