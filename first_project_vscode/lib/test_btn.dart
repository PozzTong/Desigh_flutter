
import 'package:first_project_vscode/favo_page.dart';
import 'package:first_project_vscode/home_page.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class TestBtn extends StatefulWidget {
  const TestBtn({super.key});

  @override
  State<TestBtn> createState() => _TestBtnState();
}

class _TestBtnState extends State<TestBtn> {
  int indexTap = 0;//set variable
  void selectInset(int index) {//class name
    setState(() {
      indexTap = index;
    });
  }

  List pages = [
    const HomePages(),const FavoritePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cleaner App'),
      ),
      body: pages[indexTap],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorite')
        ],
        onTap: selectInset,
        currentIndex: indexTap,
      ),
    );
  }
}
