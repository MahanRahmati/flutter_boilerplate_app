/// The app_router library defines the router for the application.
///
/// It exports the GoRouter package which provides the routing functionality.
///
/// It exports the routes.dart which defines the routes used in the app.
///
/// By exporting these files, the router configuration is shared with the
/// rest of the app.
library app_router;

export 'package:go_router/go_router.dart';

export 'src/routes.dart';
