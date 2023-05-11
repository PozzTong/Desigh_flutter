import 'package:first_project_vscode/UX/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

// ignore: must_be_immutable
class DetailProduct extends StatefulWidget {
  DetailProduct({super.key, required this.product});
  ProductModel product;
  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image(
                  fit: BoxFit.cover, image: NetworkImage(widget.product.image)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '\$ ${widget.product.price}',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FloatingActionButton.small(
                    onPressed: () {},
                    child: const Icon(Icons.share),
                  ),
                  FloatingActionButton.small(
                    onPressed: () {},
                    child: const Icon(Icons.favorite),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.product.name,
                style: const TextStyle(fontSize: 17),
                maxLines: 2,
              ),
            ),
            Card(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.product.stockStatus,),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    '1 review',
                    style: TextStyle(fontSize: 17),
                  ),
                  const Text('|'),
                  const Icon(
                    Icons.star,
                    color: Colors.red,
                  ),
                  Text(
                    widget.product.rate.toString(),
                    style: const TextStyle(fontSize: 17),
                  )
                ],
              ),
            ),
            const Card(
              elevation: 0,
              child: ListTile(
                title: Text(
                  'Color & Size',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
            const Card(
              elevation: 0,
              child: ListTile(
                title: Text(
                  'Item Describtion',
                  style: TextStyle(fontSize: 17),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        width: double.infinity,
        color: Colors.blue,
        child: Row(
          children: [
            const Expanded(
                flex: 1,
                child: Image(
                    image: NetworkImage(
                        'https://www.iconpacks.net/icons/2/free-store-icon-2017-thumb.png'))),
            Expanded(
                flex: 2,
                child: Container(
                  height: 80,
                  color: const Color.fromARGB(159, 142, 45, 38),
                  child: Center(
                      child: Text(
                    'Add to Card'.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  height: 80,
                  color: Colors.red,
                  child: Center(
                      child: Text(
                    'Buy Now'.toUpperCase(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
