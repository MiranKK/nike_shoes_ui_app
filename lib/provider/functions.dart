import 'package:flutter/material.dart';

class FunctionsData extends ChangeNotifier {
  int currentselect = -1;
  int currentscreen = 0;

  final List<Map<String, dynamic>> shoeitems = [];

  void additem(Map<String, dynamic> shoe, BuildContext context) {
    if (!shoeitems.contains(shoe)) {
      shoeitems.add(shoe);
      notifyListeners();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${shoe['name']} added to cart')));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${shoe['name']} is already in the cart')));
    }
  }

  void removeItem(Map<String, dynamic> shoe) {
    shoeitems.remove(shoe);
    notifyListeners();
  }

  double get totalPrice {
    double total = 0.0;
    for (var item in shoeitems) {
      total += double.parse(item['price'].substring(1));
    }
    return total;
  }

  void chnagetapped(int x) {
    currentselect = x;
    notifyListeners();
  }

  void selectscreen(int index) {
    currentscreen = index;
    notifyListeners();
  }
}
