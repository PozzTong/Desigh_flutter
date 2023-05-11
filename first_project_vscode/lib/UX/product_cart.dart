import 'package:first_project_vscode/UX/model/detail_product.dart';
import 'package:first_project_vscode/UX/model/product_model.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/framework.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

// ignore: must_be_immutable
class Prod extends StatelessWidget {
  Prod({super.key, required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailProduct(product: product),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.blue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      //color: Colors.blue,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(product.image))),
                  // child: const Text('Hello'), //35:40
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.name),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ ${product.price}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            product.discount == 0.0
                                ? const SizedBox()
                                : Text(
                                    '-${product.discount}%',
                                    style: const TextStyle(color: Colors.red),
                                  )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              product.stockStatus.toUpperCase(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: product.stockStatus == 'INSTOCK'
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 16,
                                ),
                                Text(
                                  product.rate.toString(),
                                  style: const TextStyle(color: Colors.red),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
