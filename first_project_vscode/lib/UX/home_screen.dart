import 'package:first_project_vscode/UX/model/product_model.dart';
import 'package:first_project_vscode/UX/product_cart.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class MyScreen01 extends StatefulWidget {
  const MyScreen01({super.key});

  @override
  State<MyScreen01> createState() => _MyScreen01State();
}

class _MyScreen01State extends State<MyScreen01> {
  TextEditingController searchController = TextEditingController();
  List<ProductModel> filterList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text('E-Shop'),
        centerTitle: true,
        actions: [
          badges.Badge(
            position: badges.BadgePosition.topEnd(top: -20, end: -12),
            showBadge: true,
            ignorePointer: false,
            onTap: () {},
            badgeContent: const Text(
              '2',
              style: TextStyle(color: Colors.red, fontSize: 15),
            ),
            badgeStyle: badges.BadgeStyle(
              shape: badges.BadgeShape.circle,
              badgeColor: Colors.red,
              padding: const EdgeInsets.all(5),
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white, width: 2),
              badgeGradient: const badges.BadgeGradient.linear(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              elevation: 0,
            ),
            child: const Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  filterList = products
                      .where((element) => element.name.contains(value))
                      .toList();
                });
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: ' Search Food'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Top Selling',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: GridView.count(
                  mainAxisSpacing: 2, //row
                  crossAxisSpacing: 2, //cul
                  crossAxisCount: 2, //31:08
                  childAspectRatio: 10 / 15,
                  children: List.generate(
                      searchController.text.isEmpty || filterList.isEmpty
                          ? products.length
                          : filterList.length,
                      (index) => Prod(
                            product: searchController.text.isEmpty ||
                                    filterList.isEmpty
                                ? products[index]
                                : filterList[index],
                          ))))
        ],
      ),
    );
  }
}
