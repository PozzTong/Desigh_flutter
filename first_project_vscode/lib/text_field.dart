import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class InputDataScreen extends StatelessWidget {
  const InputDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Input'),
      ),
      body: const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}