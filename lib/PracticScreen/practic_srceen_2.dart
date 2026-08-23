import 'package:flutter/material.dart';

class PracticeScreen2 extends StatelessWidget {
  const PracticeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(Icons.arrow_back, ),
        title: Text("My Wishlist"),
        actions: [
          Icon(Icons.more_horiz),
        ],
      ),
      body: Column(
        children: [
          Divider(
            height: 100,
          )
        ],
      ),
    );
  }
}
