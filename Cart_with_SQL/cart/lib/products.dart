import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Badge;

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);
  @override
  State<Products> createState() => _ProductsState();
}

// List of product names of fruits
List<String> productNames = [
  'Apple',
  'Banana',
  'Cherry',
  'Date',
  'Elderberry',
  'Fig',
  'Grapes'
];
// List of product units
List<String> productUnits = ['kg', 'dozen', 'kg', 'kg', 'kg', 'kg', 'kg'];
// List of product prices
List<String> productPrices = [
  '3.50',
  '1.20',
  '4.00',
  '5.50',
  '7.00',
  '6.00',
  '2.50'
];
// List of product images
List<String> productImages = [
  'https://pngimg.com/uploads/apple/apple_PNG12405.png', // Apple
  'https://www.vecteezy.com/png/4323946-banana', // Banana
  'https://www.vecteezy.com/png/2951475-cherry', // Cherry
  'https://www.vecteezy.com/png/4719835-date', // Date
  'https://www.vecteezy.com/png/4717488-elderberry', // Elderberry
  'https://www.vecteezy.com/png/4202822-fig', // Fig
  'https://www.vecteezy.com/png/4325930-grapes' // Grapes
];

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text("Products"),
            centerTitle: true,
            actions: [
              Center(
                child: Badge(
                  badgeContent: Text("0"),
                  badgeAnimation: BadgeAnimation.fade(
                    animationDuration: Duration(milliseconds: 100),
                  ),
                  child: Icon(Icons.shopping_cart_outlined),
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          body: SafeArea(
              child: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: productNames.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CachedNetworkImage(
                                    height: 100,
                                    width: 100,
                                    imageUrl: productImages[index].toString(),
                                    placeholder: (context, url) =>
                                        CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Icon(Icons.error),
                                  ),
                                  Text(index.toString())
                                ],
                              )
                            ],
                          ),
                        );
                      }))
            ],
          )),
        ));
  }
}
