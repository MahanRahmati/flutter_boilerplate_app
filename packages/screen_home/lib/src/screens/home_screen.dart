import 'package:app_localizations/app_localizations.dart';
import 'package:app_providers/app_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void changeThemeMode(final WidgetRef ref, final ThemeMode mode) {
    ref.read(appThemeModeProvider.notifier).setThemeMode(mode);
  }

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final AsyncValue<ThemeMode> themeMode = ref.watch(appThemeModeProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(t.hello(name: 'user'))),
      body: ListView(
        children: <Widget>[
          RadioListTile<ThemeMode>(
            value: ThemeMode.system,
            groupValue: themeMode.value,
            title: const Text('System'),
            onChanged: (final _) => changeThemeMode(ref, ThemeMode.system),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.dark,
            groupValue: themeMode.value,
            title: const Text('Dark'),
            onChanged: (final _) => changeThemeMode(ref, ThemeMode.dark),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.light,
            groupValue: themeMode.value,
            title: const Text('Light'),
            onChanged: (final _) => changeThemeMode(ref, ThemeMode.light),
          ),
        ],
      ),
    );
  }
}
