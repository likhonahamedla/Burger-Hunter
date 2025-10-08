import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Map<String, dynamic>> _cartItem = [];
  List<Map<String, dynamic>> get cartItem => _cartItem;
  int get itemCount => _cartItem.length;

  double get totalPrice {
    double total = 0;
    for (var item in _cartItem) {
      total += item['total'];
    }
    return total;
  }

  void addItem(Map<String, String> item, int itemCount) {
    double priceValue = double.parse(
      item['price']!.replaceAll(RegExp(r'[^0-9.]'), ''),
    );
    final existingItem = _cartItem.indexWhere(
      (cartItem) => cartItem['name'] == item['name'],
    );
    if ((existingItem != -1)) {
      _cartItem[existingItem]['count'] = itemCount;
      _cartItem[existingItem]['total'] = itemCount * priceValue;
    } else {
      _cartItem.add({
        ...item,
        'count': itemCount,
        'total': itemCount * priceValue,
      });
    }
    notifyListeners();
  }

  void clearCart() {
    _cartItem = [];
  }

  void cartRemove(int index) {
    _cartItem.removeAt(index);
  }
}
