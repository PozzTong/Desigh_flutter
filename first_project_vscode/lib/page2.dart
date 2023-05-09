import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Widget'),
      ),
      body: Center(
        child: Row(
          children: [
            Flexible(
             flex: 2,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
                child: const Center(
                  child: Text('Containter',
                  style: TextStyle(fontSize: 20),
                  ),
              ),
              ),
            ),
             Expanded(
              flex: 3,
              child: Container(
                
                height: 200,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    'Containter',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
             Expanded(
              flex: 4,
              child: Container(
                
                height: 200,
                color: Colors.yellow,
                child: const Center(
                  child: Text(
                    'Containter',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}