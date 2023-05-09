import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack')),
      body: Center(
        child: Stack(children: [
          Container(
            height: 200,
            width: 300,
            color: null,
            child: const Image(image: NetworkImage(
                    'https://docs.flutter.dev/assets/images/dash/Dashatars.png')),
          ),
          Positioned(
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                        'https://docs.flutter.dev/assets/images/dash/Dashatars.png')
                  )
              ),
            ))
        ]),
      ),
    );
  }
}