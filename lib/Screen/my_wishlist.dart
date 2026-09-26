import 'package:flutter/material.dart';

class MyWishlist extends StatefulWidget {
  const MyWishlist({super.key});

  @override
  State<MyWishlist> createState() => _MyWishlistState();
}

class _MyWishlistState extends State<MyWishlist> {
  final String title = "My Wishlist";

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        title: Text(title),
        centerTitle: true,
          leading: IconButton(onPressed: (){},
              icon: Container(
                height: screenSize.height * 0.2,
                  width: screenSize.width * 0.3,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 1.5,
                      color: Colors.grey.shade300
                    )
                  ),
                  child: Icon(Icons.arrow_back))),
        bottom: PreferredSize(preferredSize: Size.fromHeight(1), child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(),
        ))
      ),
    );
  }
}
