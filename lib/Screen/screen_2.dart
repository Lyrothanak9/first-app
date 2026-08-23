import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.local_pharmacy, size: 32, color: Colors.blueGrey),
            Text(
              "PharmaCare",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo,
              ),
            ),
          ],
        ),
        actionsPadding: EdgeInsets.all(16),
        actions: [
          Icon(Icons.notification_add),
          SizedBox(width: 12),
          Icon(Icons.shopping_bag),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 50,
                  width: 315,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search for you're medicine",
                    ),
                  ),
                ),

                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.deepPurple,
                  ),
                  child: Icon(Icons.tune),
                ),
                // sizedBox(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(radius),
                //   ),
                // ),
              ],
            ),
            SizedBox(height: 20),
            Poster(),
            SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                ),
                Text("See All", style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),)
              ],
            ),
            SizedBox(height: 10,),
            CategoryItem(),
            SizedBox(height: 20,),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}

class Poster extends StatefulWidget {
  const Poster({super.key});

  @override
  State<Poster> createState() => _PosterState();
}

class _PosterState extends State<Poster> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 200,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.blueAccent],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _discountPoster(),
              SizedBox(height: 8,),
              Text("Get the care and", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
              Text("Get the care and", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
              Text("Get the care and", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),
              _shopNowButton(),
            ],
          ),
          Image.network("https://imgs.search.brave.com/XV_lqASamzbn_hgh6a9PlmHcaxkNepiII3oa0FGNKIk/rs:fit:0:180:1:0/g:ce/aHR0cHM6Ly9jZG4t/aWNvbnMtcG5nLmZs/YXRpY29uLmNvbS8x/MjgvODA3Mi84MDcy/OTE0LnBuZw"),
        ],
      ),
    );
  }

  Widget _discountPoster() {
    return Container(
      height: 30,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.green,
      ),
      child: const Center(
        child: Text(
          "Up to 30% off",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _shopNowButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(10)
        ),
      ),
        onPressed: (){}, 
        child: Row(
          children: [
            Text("Shop Now"),
            SizedBox(width: 10,),
            Icon(Icons.arrow_forward_outlined),
          ],
        )
    );
  }
}

class CategoryItem extends StatefulWidget {
  const CategoryItem({super.key});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200]
              ),
              child: Image.network("https://imgs.search.brave.com/3ZCcwgleLhMP-ouv7J6QO92yyGdBKjaCyELfk72adVc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wbmcu/cG5ndHJlZS5jb20v/cG5nLXZlY3Rvci8y/MDI0MDUxNC9vdXJt/aWQvcG5ndHJlZS1w/aWxscy1hbmQtY2Fw/c3VsZXMtaW4tdGhl/LXNob3BwaW5nLWNh/cnQtcG5nLWltYWdl/XzEyNDYwMDU2LnBu/Zw"),
            ),
            SizedBox(height: 10,),
            Text("Medicines", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200]
              ),
              child: Image.network("https://imgs.search.brave.com/3ZCcwgleLhMP-ouv7J6QO92yyGdBKjaCyELfk72adVc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wbmcu/cG5ndHJlZS5jb20v/cG5nLXZlY3Rvci8y/MDI0MDUxNC9vdXJt/aWQvcG5ndHJlZS1w/aWxscy1hbmQtY2Fw/c3VsZXMtaW4tdGhl/LXNob3BwaW5nLWNh/cnQtcG5nLWltYWdl/XzEyNDYwMDU2LnBu/Zw"),
            ),
            SizedBox(height: 10,),
            Text("Vitamins", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200]
              ),
              child: Image.network("https://imgs.search.brave.com/3ZCcwgleLhMP-ouv7J6QO92yyGdBKjaCyELfk72adVc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wbmcu/cG5ndHJlZS5jb20v/cG5nLXZlY3Rvci8y/MDI0MDUxNC9vdXJt/aWQvcG5ndHJlZS1w/aWxscy1hbmQtY2Fw/c3VsZXMtaW4tdGhl/LXNob3BwaW5nLWNh/cnQtcG5nLWltYWdl/XzEyNDYwMDU2LnBu/Zw"),
            ),
            SizedBox(height: 10,),
            Text("Beauty", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            ),
          ],
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[200]
              ),
              child: Image.network("https://imgs.search.brave.com/3ZCcwgleLhMP-ouv7J6QO92yyGdBKjaCyELfk72adVc/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wbmcu/cG5ndHJlZS5jb20v/cG5nLXZlY3Rvci8y/MDI0MDUxNC9vdXJt/aWQvcG5ndHJlZS1w/aWxscy1hbmQtY2Fw/c3VsZXMtaW4tdGhl/LXNob3BwaW5nLWNh/cnQtcG5nLWltYWdl/XzEyNDYwMDU2LnBu/Zw"),
            ),
            SizedBox(height: 10,),
            Text("Baby Care", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            ),
          ],
        ),
      ],
    );
  }
}

class PopularProducts extends StatefulWidget {
  const PopularProducts({super.key});

  @override
  State<PopularProducts> createState() => _PopularProductsState();
}

class _PopularProductsState extends State<PopularProducts> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Popular Products", style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),

      ],
    );
  }
}
