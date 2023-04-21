import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '/src/providers/theme_mode_provider.dart';

class GlobalProviders {
  GlobalProviders._();
  static List<SingleChildWidget> providers = <SingleChildWidget>[
    ListenableProvider<ThemeModeProvider>.value(value: ThemeModeProvider())
  ];
}
