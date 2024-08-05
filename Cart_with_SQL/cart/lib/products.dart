import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Badge;

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);
  @override
  State<Products> createState() => _ProductsState();
}

List<String> productNames = ['Apple', 'Banana', 'Cherry', 'Date', 'Elderberry'];
List<String> productUnits = ['kg', 'dozen', 'kg', 'kg', 'kg'];
List<String> productPrices = ['3.50', '1.20', '4.00', '5.50', '7.00'];
List<String> productImages = [
  'https://images.unsplash.com/photo-1567306226416-28f0efdc88ce', // Apple
  'https://images.unsplash.com/photo-1574226516831-e1dff420e38e', // Banana
  'https://images.unsplash.com/photo-1592928300230-6a7b4e6a234f', // Cherry
  'https://images.unsplash.com/photo-1571790076043-49b4b4e84fa5', // Date
  'https://images.unsplash.com/photo-1592078615339-4e08c0f53d8d' // Elderberry
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
                child: ListView.builder(
              itemCount: productNames.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CachedNetworkImage(
                    imageUrl: productImages[index],
                    placeholder: (context, url) => CircularProgressIndicator(),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  title: Text(productNames[index]),
                  subtitle: Text(
                      'Unit: ${productUnits[index]}, Price: \$${productPrices[index]}'),
                );
              },
            ))));
  }
}
