import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;

class Orientations {
  static void setPreferredOrientations() {
    SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }
}
