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
  './images/apple.png', // Apple
//   'https://www.vecteezy.com/png/4323946-banana', // Banana
//   'https://www.vecteezy.com/png/2951475-cherry', // Cherry
//   'https://www.vecteezy.com/png/4719835-date', // Date
//   'https://www.vecteezy.com/png/4717488-elderberry', // Elderberry
//   'https://www.vecteezy.com/png/4202822-fig', // Fig
//   'https://www.vecteezy.com/png/4325930-grapes' // Grapes
];

class _ProductsState extends State<Products> {
  int i = 0;

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
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CachedNetworkImage(
                                        height: 100,
                                        width: 100,
                                        imageUrl: productImages[i].toString(),
                                        placeholder: (context, url) =>
                                            CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Icon(Icons.error),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              productNames[index].toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              productUnits[index].toString() +
                                                  " " +
                                                  r"$" +
                                                  productPrices[index]
                                                      .toString(),
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Container(
                                                height: 50,
                                                width: 80,
                                                decoration: BoxDecoration(
                                                    color: Colors.green,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Center(
                                                  child: Text("Add to Cart"),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }))
            ],
          )),
        ));
  }
}
