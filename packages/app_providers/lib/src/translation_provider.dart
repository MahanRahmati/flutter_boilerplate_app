import 'package:app_localizations/app_localizations.dart';
import 'package:app_providers/app_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'translation_provider.g.dart';

@riverpod
StringsEn translation(final TranslationRef ref) {
  final AppLocale? appLocale = ref.watch(appLanguageProvider).value;
  if (appLocale == null) {
    return AppLocale.en.build();
  }
  return appLocale.build();
}
