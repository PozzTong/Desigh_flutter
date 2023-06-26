//import 'package:first_project_vscode/page2.dart';
//import 'package:first_project_vscode/page3.dart';
//import 'package:first_project_vscode/homepage.dart';
//import 'package:first_project_vscode/image.dart';
//import 'package:first_project_vscode/image_screen.dart';
//import 'package:first_project_vscode/scroll1.dart';
//import 'package:first_project_vscode/page01.dart';
//import 'package:first_project_vscode/text_field2.dart';
//import 'package:first_project_vscode/stack.dart';
//import 'package:first_project_vscode/text_field.dart';
//import 'package:first_project_vscode/Widget%20with%20Packet/image_slide_show.dart';
//import 'package:first_project_vscode/Responsive/screen1.dart';
//import 'package:first_project_vscode/UX/exam1.dart';
//import 'package:first_project_vscode/Log%20Form/auth/log_form.dart';
//import 'package:first_project_vscode/Log%20Form/auth/signin_screen.dart';
import 'package:first_project_vscode/Log%20Form/dashboard/view/main_dashboard.dart';
//import 'package:first_project_vscode/UX/home_screen.dart';
//import 'package:first_project_vscode/UX/ux_ui.dart';
//import 'package:first_project_vscode/open_camera.dart';
//import 'package:first_project_vscode/test_btn.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

//stl state less
//stf state full
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: MainDashboard(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        leading: const FlutterLogo(),
        centerTitle: true,
        title: const Text('Hello'),
        actions: const [Icon(Icons.search), Icon(Icons.notifications)],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello',
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 230, 20, 5),
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Basic',
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 230, 20, 5),
                fontWeight: FontWeight.bold),
          ),
          Text(
            'Dart',
            style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 230, 20, 5),
                fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Basic',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Hello',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              )
            ],
          ),
        ],
      ),
    );
  }
}
