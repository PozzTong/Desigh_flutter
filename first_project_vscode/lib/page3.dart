import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page3'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.only(topRight: Radius.circular(40)) 
          ),
          child: const Center(
            child: Text('Container', style: TextStyle(fontSize: 20),),
          ),
        ),
      ),
    );
  }
}