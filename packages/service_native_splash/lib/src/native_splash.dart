import 'package:flutter/widgets.dart' show WidgetsBinding;
import 'package:flutter_native_splash/flutter_native_splash.dart';

/// NativeSplash class handles initializing and removing the native splash
/// screen.
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
  bool _initialized = false;

  /// Initializes the native splash screen.
  Future<void> init(final WidgetsBinding widgetsBinding) async {
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    _initialized = true;
  }

  /// Removes the native splash screen.
  void remove() {
    if (_initialized) {
      FlutterNativeSplash.remove();
    }
  }
}
