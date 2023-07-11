import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'data',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const Expanded(flex: 5, child: Text('data')),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: () {}, icon: const Icon(Icons.remove))
                    ],
                  )
                ],
              ))
        ],
      ),
      bottomSheet: Container(
        color: Colors.blue,
        height: 80,
        width: double.infinity,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blueGrey,
                child: const Center(
                  child: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'add to card'.toUpperCase(),
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
