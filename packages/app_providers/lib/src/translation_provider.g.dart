// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translation_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$translationHash() => r'3da0959cbbedc63020907858d1330c8af613cf4d';

/// translation returns the translated strings for the current app locale.
///
/// It gets the current [AppLocale] from [appLanguageProvider].
///
/// If no locale is set, it defaults to English.
///
/// It returns the localized [Translations] for the locale.
///
/// Copied from [translation].
@ProviderFor(translation)
final translationProvider = AutoDisposeProvider<Translations>.internal(
  translation,
  name: r'translationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$translationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef TranslationRef = AutoDisposeProviderRef<Translations>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
