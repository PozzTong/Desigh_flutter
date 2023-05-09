import 'package:flutter/material.dart';

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('My App')),
      body: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
            height: 200,
            color: Colors.blue,
            child: const Center(
              child: Text('Widget1'),
            ),
          )),
          Expanded(
            flex: 3,
            child: Container(
            height: 200,
            color: Colors.red,
            child: const Center(
              child: Text('Widget2'),
            ),
          )),
          Expanded(
            flex: 2,
            child: Container(
            height: 200,
            color: Colors.yellow,
            child: const Center(
              child: Text('Widget3'),
            ),
          )),
        ],
      ),
    );
  }
}