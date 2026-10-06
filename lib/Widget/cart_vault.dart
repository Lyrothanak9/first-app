import 'package:flutter/cupertino.dart';

class CartVault extends ChangeNotifier{
  int itemCount = 0;

  void addToCart() {
    itemCount++;
    notifyListeners();
  }
  void clearCart() {
    itemCount = 0;
    notifyListeners();
  }
}