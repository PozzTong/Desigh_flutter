import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:get/get.dart';
import 'package:sale_app1_vscode/controller/counter_controller.dart';

import 'package:sale_app1_vscode/views/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Category',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
        init: controller,
        builder: (context) {
          return Scaffold(
            drawer: const Drawer(),
            appBar: AppBar(
              backgroundColor: Colors.blueAccent,
              title: Text(
                widget.title,
                style: const TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              actions: [
                badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -10, end: -12),
                  showBadge: true,
                  ignorePointer: false,
                  onTap: () {},
                  // badgeContent: Icon(Icons.check, color: Colors.white, size: 10),
                  badgeAnimation: const badges.BadgeAnimation.rotation(
                    animationDuration: Duration(seconds: 1),
                    colorChangeAnimationDuration: Duration(seconds: 1),
                    loopAnimation: false,
                    curve: Curves.fastOutSlowIn,
                    colorChangeAnimationCurve: Curves.easeInCubic,
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.blue,
                        ),
                        hintText: "Search for restaurants or foods"),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.color_lens_outlined),
                    Text(
                      "Foods & Drink",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.menu),
                    Icon(Icons.grid_4x4_outlined)
                  ],
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 6,
                    childAspectRatio: 7 / 8,
                    children: List.generate(8, (index) => const ProductCard()),
                  ),
                ))
              ],
            ),
          );
        });
  }
}
