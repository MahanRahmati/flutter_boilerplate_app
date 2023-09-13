import 'package:app_constants/app_constants.dart';
import 'package:app_providers/app_providers.dart';
import 'package:app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

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
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: themeModeProvider.selectedThemeMode,
            routerConfig: Routes.router,
          );
        },
      ),
    );
  }
}
