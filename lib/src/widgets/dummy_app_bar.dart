import 'package:flutter/material.dart';

class DummyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DummyAppBar({super.key});

  @override
  Widget build(final BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => Size.zero;
}
