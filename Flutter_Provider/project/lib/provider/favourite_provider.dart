import 'package:flutter/foundation.dart';

class FavouriteProvider with ChangeNotifier {
  List<int> _slectedItems = [];

  List<int> get selectItems => _slectedItems;

  void addItem(int item) {
    _slectedItems.add(item);
    notifyListeners();
  }

  void removeItems(int item) {
    _slectedItems.remove(item);
    notifyListeners();
  }
}
