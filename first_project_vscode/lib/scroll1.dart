import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('data'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.blueAccent,
              child: const Image(
                image: NetworkImage(
                  'https://docs.flutter.dev/assets/images/dash/Dashatars.png'),),
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.deepOrange,
              child: const Image(
                image: NetworkImage(
                    'https://docs.flutter.dev/assets/images/dash/Dashatars.png')),
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.purple,
              child: const Image(
                image: NetworkImage(
                    'https://docs.flutter.dev/assets/images/dash/Dashatars.png')),
            )
        ]),
      ),
    );
  }
}