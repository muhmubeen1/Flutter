import 'package:flutter/material.dart';
import 'package:project/favourite/myfavourite.dart';
import 'package:project/provider/favourite_provider.dart';
import 'package:provider/provider.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    final favourite = Provider.of<FavouriteProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyFavourite()));
                },
                child: Icon(Icons.favorite)),
          ],
          title: const Text("Favourite Screen"),
          backgroundColor: Colors.yellow,
        ),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Consumer<FavouriteProvider>(
                      builder: (context, value, child) {
                        return ListTile(
                          onTap: () {
                            if (value.selectItems.contains(index)) {
                              value.removeItems(index);
                            } else {
                              value.addItem(index);
                            }
                          },
                          title: Text("Stella"),
                          trailing: favourite.selectItems.contains(index)
                              ? Icon(Icons.favorite)
                              : Icon(Icons.favorite_border_outlined),
                          subtitle: Text(index.toString()),
                        );
                      },
                    );
                  }),
            )
          ],
        )),
      ),
    );
  }
}
