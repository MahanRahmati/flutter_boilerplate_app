import 'package:app_localizations/app_localizations.dart';
import 'package:app_providers/app_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'translation_provider.g.dart';

/// translation returns the translated strings for the current app locale.
///
/// It takes a [TranslationRef] which provides access to providers.
///
/// It gets the current [AppLocale] from [appLanguageProvider].
///
/// If no locale is set, it defaults to English.
///
/// It returns the localized [StringsEn] for the locale.
@riverpod
StringsEn translation(final TranslationRef ref) {
  final AppLocale? appLocale = ref.watch(appLanguageProvider).value;
  if (appLocale == null) {
    return AppLocale.en.build();
  }
  return appLocale.build();
}
