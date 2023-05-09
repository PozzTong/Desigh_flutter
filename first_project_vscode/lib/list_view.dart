import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class ScrollViewScreen extends StatelessWidget {
  const ScrollViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scroll Widget')),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.blueAccent,
            child: const Image(
              image: NetworkImage('url')),
          ),
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.deepOrange,
            child: const Image(
              image: NetworkImage('url')),
          ),
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.purple,
            child: const Image(image: NetworkImage('url')),
          )
      ]),
    );
  }
}
