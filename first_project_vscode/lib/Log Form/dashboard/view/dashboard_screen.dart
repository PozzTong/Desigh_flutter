import 'package:first_project_vscode/Log%20Form/auth/signin_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  TextEditingController nameController = TextEditingController();
  List<String> usersList = [];
  getListUser() async {
    var prefs = await SharedPreferences.getInstance();
    setState(() {
      usersList = prefs.getStringList('user') ?? ['Kahna', 'Dalin', 'Chivon'];
    });
  }

  setListUser(dynamic listUser) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('user', listUser);
  }

  @override
  void initState() {
    // TO DO: implement initState
    getListUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: ListTile(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SigninScreen(),
                      ),
                      (route) => false);
                },
                title: const Text("Sign Out"),
                leading: const Icon(
                  Icons.person,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(title: const Text("Welcome to App")),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Enter Name'),
                  ),
                ),
                CupertinoButton(
                    color: Theme.of(context).primaryColor,
                    child: const Text('Add'),
                    onPressed: () {
                      if (nameController.text.isNotEmpty) {
                        getListUser();
                        usersList.add(nameController.text);
                        setListUser(usersList);
                        setState(() {
                          getListUser();
                        });
                      }
                    })
              ],
            ),
          ),
          Expanded(
              flex: 3,
              child: ListView.builder(
                itemCount: usersList.length,
                itemBuilder: (context, index) => Card(
                  elevation: 0,
                  child: ListTile(title: Text(usersList[index])),
                ),
              ))
        ],
      ),
    );
  }
}
