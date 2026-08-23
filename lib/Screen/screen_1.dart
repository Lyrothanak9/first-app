
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actionsPadding: EdgeInsets.all(16),
          title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Online Shop", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(width: 120,),
            Icon(Icons.search),
            SizedBox(width: 16,),
            Icon(Icons.mail),
            SizedBox(width: 16,),
            Icon(Icons.notification_add),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommendation", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                  Icon(Icons.grid_view_outlined),
                ],
              ),
              SizedBox(height: 10,),
              Row( // Product image line 1
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    // alignment: AlignmentGeometry.(, y),
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.deepPurple,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.favorite_border),
                          ],
                        ),
                        Center(child: Image.network("https://i.ebayimg.com/images/g/~asAAOSwY2VnwvHq/s-l960.webp", height: 120, width: 120,))
                      ],
                    )
                  ),
                  SizedBox(width: 16,),
                  Container(
                      padding: EdgeInsets.all(16),
                      // alignment: AlignmentGeometry.(, y),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.favorite_border),
                            ],
                          ),
                          Center(child: Image.network("https://i.ebayimg.com/images/g/0UgAAeSwUGhqLXqt/s-l1600.webp", height: 120, width: 120,))
                        ],
                      )
                  ),
                ],
              ),
              Row(// Item product detail line 1
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Iphone 17",
                              style: TextStyle(
                              fontSize: 14,
                                fontWeight: FontWeight.bold,
                            ),),
                            // SizedBox(height: 8,),
                            Text("140.0\$",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.orange
                              ),),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.black
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),
          
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hoodies",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            // SizedBox(height: 8,),
                            Text("15.0\$",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange
                              ),),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
          
                      ],
                    ),
                  ),
                ],
              ),
          
              Row( // Product image line 1
                children: [
                  Container(
                      padding: EdgeInsets.all(16),
                      // alignment: AlignmentGeometry.(, y),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.favorite_border),
                            ],
                          ),
                          Center(child: Image.network("https://i.ebayimg.com/images/g/hr8AAeSw4oNqY864/s-l1600.webp", height: 120, width: 120,))
                        ],
                      )
                  ),
                  SizedBox(width: 16,),
                  Container(
                      padding: EdgeInsets.all(16),
                      // alignment: AlignmentGeometry.(, y),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.favorite_border),
                            ],
                          ),
                          Center(child: Image.network("https://i.ebayimg.com/images/g/hr8AAeSw4oNqY864/s-l1600.webp", height: 120, width: 120,))
                        ],
                      )
                  ),
                ],
              ),
              Row(// Item product detail line 1
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Iphone 17",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            // SizedBox(height: 8,),
                            Text("140.0\$",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange
                              ),),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
          
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hoodies",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            // SizedBox(height: 8,),
                            Text("15.0\$",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange
                              ),),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
          
                      ],
                    ),
                  ),
                ],
              ),
          
              Row( // Product image line 1
                children: [
                  Container(
                      padding: EdgeInsets.all(16),
                      // alignment: AlignmentGeometry.(, y),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.favorite_border),
                            ],
                          ),
                          Center(child: Image.network("https://i.ebayimg.com/images/g/~asAAOSwY2VnwvHq/s-l960.webp", height: 120, width: 120,))
                        ],
                      )
                  ),
                  SizedBox(width: 16,),
                  Container(
                      padding: EdgeInsets.all(16),
                      // alignment: AlignmentGeometry.(, y),
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.orangeAccent,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.favorite_border),
                            ],
                          ),
                          Center(child: Image.network("https://i.ebayimg.com/images/g/0UgAAeSwUGhqLXqt/s-l1600.webp", height: 120, width: 120,))
                        ],
                      )
                  ),
                ],
              ),
              Row(// Item product detail line 1
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Iphone 17",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            // SizedBox(height: 8,),
                            Text("140.0\$",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange
                              ),),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
          
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hoodies",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),),
                            // SizedBox(height: 8,),
                            Text("15.0\$",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange
                              ),),
                          ],
                        ),
                        Container(
                          width: 50,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.black
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white
                              ),
                            ),
                          ),
                        ),
          
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
