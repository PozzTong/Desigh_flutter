import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class TestUser extends StatefulWidget {
  const TestUser({super.key});

  @override
  State<TestUser> createState() => _TestUserState();
}

class _TestUserState extends State<TestUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: const Text('Category'),
        actions: const [Icon(Icons.shopping_cart)],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.search), border: OutlineInputBorder()),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Icon(Icons.color_lens),
                        Text(
                          'Vegatable',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(Icons.menu),
                        Icon(Icons.apps_sharp)
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
