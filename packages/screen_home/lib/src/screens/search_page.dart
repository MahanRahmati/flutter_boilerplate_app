import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(final BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: kToolbarHeight + 32.0,
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: SearchBar(
              leading: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(Icons.search),
              ),
              hintText: 'Search',
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.cloud_outlined)),
              Tab(icon: Icon(Icons.beach_access_sharp)),
              Tab(icon: Icon(Icons.brightness_5_sharp)),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(child: Text("It's cloudy here")),
            Center(child: Text("It's rainy here")),
            Center(child: Text("It's sunny here")),
          ],
        ),
      ),
    );
  }
}
