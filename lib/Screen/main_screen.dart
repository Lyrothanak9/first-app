import 'package:first_app/Screen/item_screen.dart';
import 'package:first_app/Screen/home_screen.dart';
import 'package:first_app/Screen/my_wishlist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    ItemScreen(),
    MyWishlist(),
    Center(child: Text('Profile', style: TextStyle(fontSize: 24))),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), label: "Shop"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.clock), label: "Orders"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.gift), label: "Wishlish"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
          ]
      ),
    );
  }
}
