import 'package:app_localizations/app_localizations.dart';
import 'package:app_providers/app_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  void changeThemeMode(final WidgetRef ref, final ThemeMode mode) {
    ref.read(appThemeModeProvider.notifier).setThemeMode(mode);
  }

  void changeLocale(final WidgetRef ref, final AppLocale locale) {
    ref.read(appLanguageProvider.notifier).setLocale(locale);
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final AsyncValue<ThemeMode> themeMode = ref.watch(appThemeModeProvider);
    final AsyncValue<AppLocale> appLocale = ref.watch(appLanguageProvider);
    final StringsEn t = ref.watch(translationProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: Text(t.theme.theme)),
          RadioListTile<ThemeMode>(
            value: ThemeMode.system,
            groupValue: themeMode.value,
            title: Text(t.theme.system),
            onChanged: (final _) => changeThemeMode(ref, ThemeMode.system),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.dark,
            groupValue: themeMode.value,
            title: Text(t.theme.dark),
            onChanged: (final _) => changeThemeMode(ref, ThemeMode.dark),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.light,
            groupValue: themeMode.value,
            title: Text(t.theme.light),
            onChanged: (final _) => changeThemeMode(ref, ThemeMode.light),
          ),
          ListTile(title: Text(t.language)),
          RadioListTile<AppLocale>(
            value: AppLocale.en,
            groupValue: appLocale.value,
            title: const Text('En'),
            onChanged: (final _) => changeLocale(ref, AppLocale.en),
          ),
          RadioListTile<AppLocale>(
            value: AppLocale.de,
            groupValue: appLocale.value,
            title: const Text('De'),
            onChanged: (final _) => changeLocale(ref, AppLocale.de),
          ),
        ],
      ),
    );
  }
}
