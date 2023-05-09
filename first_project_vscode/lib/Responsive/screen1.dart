import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/rendering.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    // TO DO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.portraitUp
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Height :',
                style: TextStyle(fontSize: 28),
              ),
              Text(
                MediaQuery.of(context).size.height.toString(),
                style: const TextStyle(
                  fontSize: 26,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Weight',
                style: TextStyle(fontSize: 28),
              ),
              Text(
                MediaQuery.of(context).size.width.toString(),
                style: const TextStyle(fontSize: 26),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
            color: const Color.fromRGBO(244, 67, 54, 1),
            child: LayoutBuilder(
                builder: (context, constraints) => Container(
                      height: constraints.maxHeight * 0.5,
                      width: constraints.maxWidth * 1,
                      color: Colors.yellow,
                      child: Text(
                          (constraints.maxHeight * 0.5).toStringAsFixed(2)),
                    )),
          )
        ],
      ),
    );
  }
}
//herezontal 