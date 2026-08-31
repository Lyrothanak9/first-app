import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Practice1 extends StatelessWidget {
  const Practice1({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      // floatingActionButton: FloatingActionButton(onPressed: (){}
      // ),
      appBar: AppBar(
        title: Text(
          "Shopiza",
          style: GoogleFonts.playfairDisplay(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search and Filter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 2),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          CupertinoIcons.search,
                          color: Colors.grey.shade600,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Search products",
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: Icon(
                    CupertinoIcons.slider_horizontal_3,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Poster
            Flexible(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
                // width: double.infinity,
                // height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      CupertinoColors.systemGrey5,
                      CupertinoColors.systemOrange,
                    ],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: Text(
                              "Apple AirPods Max",
                              style: GoogleFonts.playfairDisplay(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          SizedBox(height: 8),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: screenSize.width * 0.30,
                              padding: EdgeInsets.symmetric(
                                // horizontal: 18,
                                vertical: 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    // textAlign: TextAlign.center,
                                    "Shop Now",
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      child: Image.network(
                        height: screenSize.height * 0.2,
                        width: screenSize.width * 0.3,
                        alignment: Alignment.centerRight,
                        'https://imgs.search.brave.com/_XvQ384rGe9U9XO7O8RuKB2fE84EQN0Ph-5PnO4Wd6c/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/YXBwbGUuY29tL3Yv/YWlycG9kcy1wcm8v/cy9pbWFnZXMvb3Zl/cnZpZXcvYmF0dGVy/eS9jYXNlX19iODdv/dTdqbmE5ZGVfbGFy/Z2UucG5n',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Categories",
                    style: GoogleFonts.playfairDisplay(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
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
                      title: "Fashion",
                      iconData: Icons.shopping_bag_outlined,
                      color: Colors.black87,
                    ),
                    CategoryItem(
                      title: "Electronics",
                      iconData: Icons.devices,
                      color: Colors.blueAccent,
                    ),
                    CategoryItem(
                      title: "Home",
                      iconData: Icons.home_outlined,
                      color: Colors.greenAccent,
                    ),
                    CategoryItem(
                      title: "Beauty",
                      iconData: Icons.sanitizer,
                      color: Colors.pink.shade200,
                    ),
                    CategoryItem(
                      title: "Sports",
                      iconData: Icons.sports_basketball_outlined,
                      color: Colors.orangeAccent,
                    ),
                    CategoryItem(
                      title: "Beauty",
                      iconData: Icons.menu_book_outlined,
                      color: Colors.amber.shade200,
                    ),
                  ],
                ),
              ],
            ),
            // SizedBox(height: 10),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Trending now",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "See all",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductCard(
                      image:
                          "https://imgs.search.brave.com/uwz8ukvsqPZ5TrNCB6PeONjd4ly0ux4GoCAVDWkt21s/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvdGh1/bWJuYWlscy8wNTEv/ODE1Lzc1Ny9zbWFs/bC8zZC1zdHVkaW8t/cG9kY2FzdC1oZWFk/cGhvbmVzLWRlc2ln/bi1wbmcucG5n",
                    ),
                    ProductCard(
                      image:
                          "https://imgs.search.brave.com/eCpJ1id4z45PpmXzvCHtxM1nmEDRPqXBsSn-dqXgQZo/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wbmcu/cG5ndHJlZS5jb20v/cG5nLXZlY3Rvci8y/MDI1MDEyNC9vdXJt/aWQvcG5ndHJlZS1h/LXJlZC1oZWFkcGhv/bmUtcG5nLWltYWdl/XzE1MzIwMDM3LnBu/Zw",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Color color;

  const CategoryItem({
    super.key,
    required this.title,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Icon(iconData, color: Colors.white54),
              ),
            ),
            Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatefulWidget {
  final String image;
  const ProductCard({super.key, required this.image});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blueGrey.shade50,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.shade400,
        ),
        child: Image.network(widget.image, fit: BoxFit.cover),
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.shopping_cart),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.clock),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.gift),
          label: "Wishlist",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person_circle),
          label: "Profile",
        ),
      ],
    );
  }
}
