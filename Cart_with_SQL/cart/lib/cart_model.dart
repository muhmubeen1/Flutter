class Cart {
  final int? id;
  final String? productID;
  final String? productName;
  final int? intialPrice;
  final int? productPrice;
  final int? quantity;
  final String? unitTag;
  final String? image;

  Cart({
    this.id,
    required this.productID,
    required this.productName,
    required this.intialPrice,
    required this.productPrice,
    required this.quantity,
    required this.unitTag,
    required this.image,
  });

  Cart.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        productID = res["productID"],
        productName = res["productName"],
        intialPrice = res["intialPrice"],
        productPrice = res["productPrice"],
        quantity = res["quantity"],
        unitTag = res["unitTag"],
        image = res["image"];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productID': productID,
      'productName': productName,
      'intialPrice': intialPrice,
      'productPrice': productPrice,
      'quantity': quantity,
      'unitTag': unitTag,
      'image': image,
    };
  }
}
