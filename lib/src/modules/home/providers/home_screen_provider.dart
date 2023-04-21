import 'package:flutter/material.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';

import '/src/constants/strings.dart';

class HomeScreenProvider extends SafeChangeNotifier {
  HomeScreenProvider(this.context) {
    init();
  }

  final BuildContext context;

  String get title => Strings.appName;

  Future<void> init() async {}
}
