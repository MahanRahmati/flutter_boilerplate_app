import 'package:flutter/services.dart' show DeviceOrientation, SystemChrome;

/// Sets the preferred device orientations for the app.
///
/// The [setPreferredOrientations] method configures the allowed
/// orientations by setting them on [SystemChrome].
///
/// It allows portrait up, portrait down, landscape left
/// and landscape right. This allows all 4 possible orientations.
///
/// The orientations are passed in as a list of [DeviceOrientation] enums
/// to [SystemChrome.setPreferredOrientations].
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
