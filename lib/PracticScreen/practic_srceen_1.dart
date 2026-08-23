import 'package:flutter/material.dart';

class PracticeScreen1 extends StatelessWidget {
  const PracticeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shopiza",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade400, width: 2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.search, color: Colors.grey.shade400),
                          SizedBox(width: 10),
                          Text(
                            'Search Products',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400, width: 2),
                  ),
                  child: Icon(
                    Icons.filter_alt_outlined,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(25),
              height: 180,
              // width: 420,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Colors.grey.shade300,
                    Colors.deepPurpleAccent,
                    Colors.indigo,
                    Colors.redAccent,
                    Colors.deepOrange,
                    Colors.white,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Apple",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "AirPorts Max",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 130,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                        ),
                        child: Text(
                          "Shop Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Image.network(
                    "https://imgs.search.brave.com/xnQ7r3BfA4fVkOgFhu9O7ibdHReYNzJcOxTsNhqrY94/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNzIv/NzU5LzE4Ni9zbWFs/bC9pc29sYXRlZC13/aXJlbGVzcy1oZWFk/cGhvbmVzLXN0dWRp/by1kai1zdHlsZS1m/b3ItbXVzaWMtbGlz/dGVuaW5nLWFuZC1h/dWRpby1lbnRlcnRh/aW5tZW50LWRldmlj/ZS1hY2Nlc3Nvcnkt/b24tdHJhbnNwYXJl/bnQtYmFja2dyb3Vu/ZC1wbmcucG5n",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Categories",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              children: [
                CategoryItem(
                  categoryItem: "Fashion",
                  iconData: Icons.shopping_bag_outlined,
                  color: Colors.black87,
                ),
                CategoryItem(
                  categoryItem: "Electronics",
                  iconData: Icons.devices,
                  color: Colors.blueAccent,
                ),
                CategoryItem(
                  categoryItem: "Home",
                  iconData: Icons.home_outlined,
                  color: Colors.greenAccent,
                ),
                CategoryItem(
                  categoryItem: "Beauty",
                  iconData: Icons.sanitizer,
                  color: Colors.pink.shade200,
                ),
                CategoryItem(
                  categoryItem: "Sports",
                  iconData: Icons.sports_basketball_outlined,
                  color: Colors.orangeAccent,
                ),
                CategoryItem(
                  categoryItem: "Beauty",
                  iconData: Icons.menu_book_outlined,
                  color: Colors.amber.shade200,
                ),
              ],
            ),
            Container(
              // color: Colors.orangeAccent,
              child: GridView(
                shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
              children: [
                ProductCard(),
                ProductCard(),
              ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String categoryItem;
  final IconData iconData;
  final Color color;

  const CategoryItem({
    super.key,
    required this.categoryItem,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 120,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              child: Card(
                color: Colors.white24,
                elevation: 50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(iconData, color: Colors.white),
              ),
            ),
            Text(
              categoryItem,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      //height: 350,
      //width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(
              "https://imgs.search.brave.com/r8b6d8mToPuHW2Y8eb0wbq7S0ZNLVD61N0hHQ-IMse0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wMzcv/NzUxLzI0MC9zbWFs/bC9hLXBhaXItb2Yt/b2xpdmUtY29sb3It/Y2FudmFzLXNob2Vz/LWlzb2xhdGVkLW9u/LXRyYW5zcGFyZW50/LWJhY2tncm91bmQt/cG5nLnBuZw",
            ),
          ),
          //SizedBox(height: 10,),
          // Text("Classic Brown Leather Sneakers"),
        ],
      ),
    );
  }
}
