import 'package:app_providers/app_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/home_screen_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return ChangeNotifierProvider<HomeScreenProvider>(
      create: (final _) => HomeScreenProvider(context),
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(final BuildContext context) {
    final HomeScreenProvider watch = context.watch<HomeScreenProvider>();
    final ThemeModeProvider themeModeWatch = context.watch<ThemeModeProvider>();
    final ThemeModeProvider themeModeRead = context.read<ThemeModeProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(watch.title)),
      body: ListView(
        children: <Widget>[
          RadioListTile<ThemeMode>(
            value: ThemeMode.system,
            groupValue: themeModeWatch.selectedThemeMode,
            title: const Text('System'),
            onChanged: (final _) {
              themeModeRead.setThemeMode(ThemeMode.system);
            },
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.dark,
            groupValue: themeModeWatch.selectedThemeMode,
            title: const Text('Dark'),
            onChanged: (final _) {
              themeModeRead.setThemeMode(ThemeMode.dark);
            },
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.light,
            groupValue: themeModeWatch.selectedThemeMode,
            title: const Text('Light'),
            onChanged: (final _) {
              themeModeRead.setThemeMode(ThemeMode.light);
            },
          ),
        ],
      ),
    );
  }
}
