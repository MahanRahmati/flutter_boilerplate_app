/// Generated file. Do not edit.
///
/// Original: lib/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 12 (6 per locale)
///
/// Built on 2023-09-14 at 17:46 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, StringsEn> {
  en(languageCode: 'en', build: StringsEn.build),
  de(languageCode: 'de', build: StringsDe.build);

  const AppLocale({
    required this.languageCode,
    this.scriptCode,
    this.countryCode,
    required this.build,
  }); // ignore: unused_element

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;
  @override
  final TranslationBuilder<AppLocale, StringsEn> build;
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, StringsEn> {
  AppLocaleUtils._()
      : super(baseLocale: _baseLocale, locales: AppLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
  static AppLocale parseLocaleParts(
          {required String languageCode,
          String? scriptCode,
          String? countryCode}) =>
      instance.parseLocaleParts(
          languageCode: languageCode,
          scriptCode: scriptCode,
          countryCode: countryCode);
  static AppLocale findDeviceLocale() => instance.findDeviceLocale();
  static List<Locale> get supportedLocales => instance.supportedLocales;
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class StringsEn implements BaseTranslations<AppLocale, StringsEn> {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  StringsEn.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.en,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, StringsEn> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final StringsEn _root = this; // ignore: unused_field

  // Translations
  String hello({required Object name}) => 'Hello ${name}';
  String get language => 'language';
  late final StringsThemeEn theme = StringsThemeEn._(_root);
}

// Path: theme
class StringsThemeEn {
  StringsThemeEn._(this._root);

  final StringsEn _root; // ignore: unused_field

  // Translations
  String get theme => 'Theme';
  String get system => 'System';
  String get dark => 'Dark';
  String get light => 'Light';
}

// Path: <root>
class StringsDe implements StringsEn {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  StringsDe.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.de,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <de>.
  @override
  final TranslationMetadata<AppLocale, StringsEn> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  @override
  late final StringsDe _root = this; // ignore: unused_field

  // Translations
  @override
  String hello({required Object name}) => 'Hallo ${name}';
  @override
  String get language => 'Sprache';
  @override
  late final StringsThemeDe theme = StringsThemeDe._(_root);
}

// Path: theme
class StringsThemeDe implements StringsThemeEn {
  StringsThemeDe._(this._root);

  @override
  final StringsDe _root; // ignore: unused_field

  // Translations
  @override
  String get theme => 'Thema';
  @override
  String get system => 'System';
  @override
  String get dark => 'Dunkel';
  @override
  String get light => 'Hell';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on StringsEn {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'hello':
        return ({required Object name}) => 'Hello ${name}';
      case 'language':
        return 'language';
      case 'theme.theme':
        return 'Theme';
      case 'theme.system':
        return 'System';
      case 'theme.dark':
        return 'Dark';
      case 'theme.light':
        return 'Light';
      default:
        return null;
    }
  }
}

extension on StringsDe {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'hello':
        return ({required Object name}) => 'Hallo ${name}';
      case 'language':
        return 'Sprache';
      case 'theme.theme':
        return 'Thema';
      case 'theme.system':
        return 'System';
      case 'theme.dark':
        return 'Dunkel';
      case 'theme.light':
        return 'Hell';
      default:
        return null;
    }
  }
}
