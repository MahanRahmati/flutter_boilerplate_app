import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/src/screens/calendar_page.dart';
import '/src/screens/home_page.dart';
import '/src/screens/search_page.dart';
import '/src/screens/settings_page.dart';
import '/src/widgets/home_screen_navigation_bar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _selectedIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: _selectedIndex);
    super.initState();
  }

  void onDestinationSelected(final int index) {
    _selectedIndex = index;
    _pageController.jumpToPage(index);
    setState(() {});
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const <Widget>[
          HomePage(),
          SearchPage(),
          CalendarPage(),
          SettingsPage(),
        ],
      ),
      bottomNavigationBar: HomeScreenNavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: onDestinationSelected,
      ),
    );
  }
}
