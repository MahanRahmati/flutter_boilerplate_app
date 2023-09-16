/// The app_router library defines the router for the application.
///
/// It exports the GoRouter package which provides the routing functionality.
///
/// It also exports:
///
/// - routes.dart - Defines the routes used in the app.
/// - routes_name.dart - Route name constants.
/// - routes_path.dart - Route path constants.
///
/// By exporting these files, the router configuration is shared with the
/// rest of the app.
library app_router;

export 'package:go_router/go_router.dart';

export 'src/routes.dart';
export 'src/routes_name.dart';
export 'src/routes_path.dart';
