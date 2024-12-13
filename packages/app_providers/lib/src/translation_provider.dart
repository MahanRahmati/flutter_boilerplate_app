import 'package:app_localizations/app_localizations.dart';
import 'package:app_providers/app_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'translation_provider.g.dart';

/// translation returns the translated strings for the current app locale.
///
/// It gets the current [AppLocale] from [appLanguageProvider].
///
/// If no locale is set, it defaults to English.
///
/// It returns the localized [Translations] for the locale.
@riverpod
Translations translation(final Ref ref) {
  final AppLocale? appLocale = ref.watch(appLanguageProvider).value;
  if (appLocale == null) {
    return AppLocale.en.buildSync();
  }
  return appLocale.buildSync();
}
