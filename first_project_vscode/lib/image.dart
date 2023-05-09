import 'package:flutter/material.dart';

class MyImage extends StatefulWidget {
  const MyImage({super.key});

  @override
  State<MyImage> createState() => _MyImageState();
}

class _MyImageState extends State<MyImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Image'),
      ),
      body: const Image(
        image: NetworkImage('https://docs.flutter.dev/assets/images/dash/Dashatars.png'),
      ),
    );
  }
}