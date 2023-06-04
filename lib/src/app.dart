import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/src/constants/strings.dart';
import '/src/constants/themes.dart';
import '/src/providers/global_providers.dart';
import '/src/providers/theme_mode_provider.dart';
import '/src/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context) {
    return MultiProvider(
      providers: GlobalProviders.providers,
      child: Consumer<ThemeModeProvider>(
        builder: (
          final BuildContext context,
          final ThemeModeProvider themeModeProvider,
          final Widget? widget,
        ) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: Strings.appName,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeModeProvider.selectedThemeMode,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            routerConfig: Routes.router,
          );
        },
      ),
    );
  }
}
