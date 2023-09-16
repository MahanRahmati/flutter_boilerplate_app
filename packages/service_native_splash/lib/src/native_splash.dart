import 'package:flutter/widgets.dart' show WidgetsBinding;
import 'package:flutter_native_splash/flutter_native_splash.dart';

/// NativeSplash class handles initializing and removing the native splash
/// screen.
///
/// This is a singleton class with a private constructor.
/// The static [instance] field provides access to the singleton instance.
///
/// The [init] method initializes the native splash screen by calling
/// [FlutterNativeSplash.preserve] and passing the [widgetsBinding].
/// This will keep the native splash screen visible until removed.
///
/// The [remove] method removes the splash screen by calling
/// [FlutterNativeSplash.remove]. This hides the native splash screen.
class NativeSplash {
  NativeSplash._();

  static final NativeSplash instance = NativeSplash._();

  Future<void> init(final WidgetsBinding widgetsBinding) async {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  }

  void remove() {
    FlutterNativeSplash.remove();
  }
}
