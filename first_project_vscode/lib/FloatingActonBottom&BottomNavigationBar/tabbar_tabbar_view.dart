import 'package:flutter/material.dart';

class TabbarView extends StatelessWidget {
  const TabbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabbar'),
        bottom: const TabBar(tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.favorite),
            text: 'Favorite',
          )
        ]),
      ),
      body: TabBarView(children: [Image.network('src'), Image.network('src')]),
    );
  }
}
