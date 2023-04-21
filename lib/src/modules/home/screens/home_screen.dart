import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/src/modules/home/providers/home_screen_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return ChangeNotifierProvider<HomeScreenProvider>(
      create: (final _) => HomeScreenProvider(context),
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(final BuildContext context) {
    final HomeScreenProvider watch = context.watch<HomeScreenProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(watch.title)),
      body: Container(),
    );
  }
}
