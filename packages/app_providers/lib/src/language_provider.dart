import 'package:app_localizations/app_localizations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:service_storage/service_storage.dart';

part 'language_provider.g.dart';

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
@riverpod
class AppLanguage extends _$AppLanguage {
  static const String _storageName = 'language';
  static const String _storageKey = 'languageKey';

  @override
  Future<AppLocale> build() async {
    final String? language =
        await HiveStorageService.instance?.getValue<String?>(
      _storageKey,
      storageName: _storageName,
    );
    return AppLocaleUtils.parseLocaleParts(languageCode: language ?? 'en');
  }

  Future<void> setLocale(final AppLocale appLocale) async {
    await HiveStorageService.instance?.setValue(
      key: _storageKey,
      value: appLocale.languageCode,
      storageName: _storageName,
    );
    state = AsyncData<AppLocale>(appLocale);
  }
}
