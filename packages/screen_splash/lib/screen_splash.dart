/// The screen_splash library defines the splash screen for the app.
///
/// It contains:
///
/// - The screen_splash library declaration. This allows the splash screen
///   widgets to be imported directly instead of relative paths.
///
/// - An export for the main [SplashScreen] widget defined in
///   splash_screen.dart. This re-exports that file's contents.
///
/// The splash screen displays briefly when the app first launches before
/// navigating to the main home screen.
library screen_splash;

export 'src/screens/splash_screen.dart';
