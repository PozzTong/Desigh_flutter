import 'package:flutter/material.dart';
import 'package:test_ux_vscode/login/signin_page.dart';
import 'package:test_ux_vscode/login/verify_form.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 20),
                    )),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                    ))
              ],
            ),
            const ListTile(
              title: Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              subtitle: Text("Let's get start"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 360,
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Gmail",
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.mail_outline)),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 360,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Pass Word",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.remove_red_eye_sharp),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const VerifyForm(),
                ));
          },
          child: const Icon(Icons.forward),
        ));
  }
}
