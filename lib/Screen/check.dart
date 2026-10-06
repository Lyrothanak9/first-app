import 'package:first_app/Widget/cart_vault.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Check extends StatelessWidget {
  const Check({super.key});

  @override
  Widget build(BuildContext context) {
    int currentCount = context.watch<CartVault>().itemCount;
    return Scaffold(
      appBar: AppBar(title: Text('My Shop')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Items in cart: $currentCount'),
            ElevatedButton(
              onPressed: () {
                context.read<CartVault>().addToCart();
              },
              child: Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
