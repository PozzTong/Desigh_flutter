//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomScreen extends StatelessWidget {
  const BottomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottoms'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){},
              child: const Text('ElevatedButton')
              ),
            TextButton(
                onPressed: (){}, 
                child: const Text('TextButton')
                ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt)),
            CupertinoButton(
              color: Colors.blue,
              child: const Text('CupertinoButton'),
              onPressed: (){}),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: (){},
              child: const Text('MaterialButon'),
              )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite')
      ]),
    );
  }
}