/// The app_providers library defines providers used throughout the app.
///
/// This allows the providers to be imported directly instead of using
/// relative paths.
///
/// It exports provider files from the src directory:
///
/// - language_provider.dart - Manages the app language
///
/// - theme_mode_provider.dart - Manages the app theme mode
///
/// - translation_provider.dart - Provides translated strings
///
/// These providers manage state across the app like theme, language,
/// translations, etc.
library app_providers;

export 'src/language_provider.dart';
export 'src/theme_mode_provider.dart';
export 'src/translation_provider.dart';
