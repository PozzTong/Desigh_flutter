import 'package:flutter/material.dart';

class Page01 extends StatefulWidget {
  const Page01({super.key});

  @override
  State<Page01> createState() => _Page01State();
}

class _Page01State extends State<Page01> {
  String mainpartFile = 'assets/images/';
  List<String> pics = [
    'first_project_vscode/assets/images/h1.jpg', 'h2.jpg','h3.webp','first_project_vscode/assets/images/h4.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page01'),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            for(int i=0; i<pics.length; i++)
            Image.asset(mainpartFile+ pics[i])
          ],
        ),
      ),
    );
  }
}
