import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sale_app1_vscode/views/detail_product.dart';


class ProductCard extends StatefulWidget {
  const ProductCard({super.key});
  // ProductsModel product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const ProductDetail());
      },
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                    fit: BoxFit.fitHeight, image: NetworkImage(''))),
            child: const Text(""),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      color: Colors.white,
                    )),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'Cake',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        '\$ 2.5',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
