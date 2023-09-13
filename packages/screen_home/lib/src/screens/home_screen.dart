import 'package:app_providers/app_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    hide ChangeNotifierProvider;
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

class _HomeScreen extends ConsumerWidget {
  const _HomeScreen();

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    final HomeScreenProvider watch = context.watch<HomeScreenProvider>();
    final AsyncValue<ThemeMode> themeMode = ref.watch(appThemeModeProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(watch.title)),
      body: ListView(
        children: <Widget>[
          RadioListTile<ThemeMode>(
            value: ThemeMode.system,
            groupValue: themeMode.value,
            title: const Text('System'),
            onChanged: (final _) {
              ref
                  .read(appThemeModeProvider.notifier)
                  .setThemeMode(ThemeMode.system);
            },
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.dark,
            groupValue: themeMode.value,
            title: const Text('Dark'),
            onChanged: (final _) {
              ref
                  .read(appThemeModeProvider.notifier)
                  .setThemeMode(ThemeMode.dark);
            },
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.light,
            groupValue: themeMode.value,
            title: const Text('Light'),
            onChanged: (final _) {
              ref
                  .read(appThemeModeProvider.notifier)
                  .setThemeMode(ThemeMode.light);
            },
          ),
        ],
      ),
    );
  }
}
