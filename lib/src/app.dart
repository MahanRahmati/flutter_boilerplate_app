import 'package:app_constants/app_constants.dart';
import 'package:app_localizations/app_localizations.dart';
import 'package:app_providers/app_providers.dart';
import 'package:app_router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// App is the root widget of the application.
///
/// It extends [ConsumerWidget] to access the app's providers.
///
/// The [build] method returns a [MaterialApp.router] configured with:
///
/// - [debugShowCheckedModeBanner] set to false to hide the debug banner
///
/// - [title] set to the app name from [Strings]
///
/// - [locale] set to the current app language from [appLanguageProvider]
///
/// - [localizationsDelegates] for material app localization
///
/// - [supportedLocales] from [AppLocaleUtils]
///
/// - [theme] and [darkTheme] set to [AppTheme]
///
/// - [themeMode] from [appThemeModeProvider]
///
/// - [routerConfig] using routes from [Routes]
class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(final BuildContext context, final WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      locale: ref.watch(appLanguageProvider).value?.flutterLocale,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: AppLocaleUtils.supportedLocales,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ref.watch(appThemeModeProvider).value,
      routerConfig: Routes.router,
    );
  }
}
