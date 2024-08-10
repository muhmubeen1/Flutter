import 'dart:io' as io;

import 'package:cart/cart_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart'; // Corrected import

class DbHelper {
  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  Future<Database> initDb() async {
    io.Directory documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, 'cart.db');
    var db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE cart (id INTEGER PRIMARY KEY , productId VARCHAR UNIQUE,productName TEXT,initialPrice INTEGER, productPrice INTEGER , quantity INTEGER, unitTag TEXT , image TEXT )',
    );
  }

  Future<Cart> insert(Cart cart) async {
    var dbClient = await db;
    try {
      await dbClient.insert('cart', cart.toMap());
    } catch (e) {
      print("Error inserting cart item: $e");
      // Handle specific exceptions as needed
    }
    return cart;
  }

  Future closeDb() async {
    var dbClient = await db;
    await dbClient.close();
  }
}
