import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

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
