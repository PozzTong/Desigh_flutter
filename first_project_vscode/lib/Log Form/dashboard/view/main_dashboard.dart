import 'package:first_project_vscode/Log%20Form/dashboard/connection/connection_db.dart';
import 'package:first_project_vscode/Log%20Form/dashboard/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MainDashboard extends StatefulWidget {
  const MainDashboard({super.key});

  @override
  State<MainDashboard> createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  TextEditingController controller = TextEditingController();
  List<ProductModel> listProduct = [];
  ProductModel? tempProduct;
  clearData() {
    tempProduct = null;
    controller.text = '';
  }

  getData() async {
    await ConnectionDB().getProductList().then((value) {
      setState(() {
        listProduct = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Database'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter ProductName"),
                  ),
                ),
              ),
              FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Colors.white,
                  onPressed: () async {
                    if (controller.text.isNotEmpty) {
                      tempProduct == null
                          ? await ConnectionDB()
                              .insertProduct(ProductModel(
                                  id: DateTime.now().microsecond,
                                  name: controller.text))
                              .whenComplete(() => getData())
                          : await ConnectionDB()
                              .updateProduct(ProductModel(
                                  id: tempProduct!.id, name: controller.text))
                              .whenComplete(() => getData());
                    }
                    clearData();
                  },
                  splashColor: Colors.white,
                  child: tempProduct == null
                      ? const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 40,
                        )
                      : const Icon(
                          Icons.done,
                          color: Colors.green,
                          size: 40,
                        ))
            ],
          ),
          Expanded(
            flex: 9,
            child: ListView.builder(
              itemCount: listProduct.length,
              itemBuilder: (context, index) => Slidable(
                key: const ValueKey(0),
                endActionPane: ActionPane(
                  motion: const ScrollMotion(),
                  dismissible: DismissiblePane(onDismissed: () {}),
                  children: [
                    SlidableAction(
                      onPressed: (value) async {
                        await ConnectionDB()
                            .deleteProduct(listProduct[index].id)
                            .whenComplete(() => getData());
                      },
                      backgroundColor: const Color(0xFFFE4A49),
                      foregroundColor: Colors.white,
                      icon: Icons.delete,
                      label: 'Delete',
                    ),
                    SlidableAction(
                      onPressed: (value) {
                        setState(() {
                          tempProduct = listProduct[index];
                          controller.text = tempProduct!.name;
                        });
                      },
                      backgroundColor: const Color(0xFF21B7CA),
                      foregroundColor: Colors.white,
                      icon: Icons.edit,
                      label: 'Edit',
                    ),
                  ],
                ),
                child: Card(
                  elevation: 0,
                  child: ListTile(
                    title: Text(listProduct[index].name),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
