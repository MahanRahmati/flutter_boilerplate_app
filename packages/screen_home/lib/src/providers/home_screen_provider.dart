import 'package:app_localizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:safe_change_notifier/safe_change_notifier.dart';

class HomeScreenProvider extends SafeChangeNotifier {
  HomeScreenProvider(this.context) {
    init();
  }

  final BuildContext context;

  String get title => t.hello(name: 'user');

  Future<void> init() async {}
}
