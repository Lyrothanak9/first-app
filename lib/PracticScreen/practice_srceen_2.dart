import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PracticeScreen2 extends StatelessWidget {
  const PracticeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.grey,
          ),
          child: Icon(CupertinoIcons.arrow_left),
        ),
        centerTitle: true,
        title: Text("My Wishlist", style: GoogleFonts.playfairDisplay(
            fontWeight: FontWeight.bold,
            fontSize: 32),
        ),
        actions: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.grey,
            ),
          )],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("5 items Saved", style: GoogleFonts.inter(
              fontSize: 18,
            ),),
            SizedBox(height: 10,),
            // ProductCardSaved(),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder:(context, index) {
              return ProductCardSaved();
            },),
          ],
        ),]
      ),
    );
  }
}

class ProductCardSaved extends StatefulWidget {
  const ProductCardSaved({super.key});

  @override
  State<ProductCardSaved> createState() => _ProductCardSavedState();
}

class _ProductCardSavedState extends State<ProductCardSaved> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(16),
      height: screenSize.height * 0.17,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: screenSize.width * 0.35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade300
            ),
            child: Image.network("https://imgs.search.brave.com/8czSqIYhIQyCfVFi_oyzGcI3hBLU3He00-E7Vuity68/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93d3cu/cG5nYWxsLmNvbS93/cC1jb250ZW50L3Vw/bG9hZHMvNC9IZWFk/cGhvbmUtVHJhbnNw/YXJlbnQtUE5HLnBu/Zw"),
          ),
          SizedBox(width: 10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Apple AirPods Max", style: GoogleFonts.inter(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),),
                      Text("\$49.99" , style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),),
                    ],
                  ),
                  SizedBox(width: 16,),
                  Container(
                    alignment: Alignment.topRight,
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Center(child: Icon(CupertinoIcons.delete)),
                  )
                ],
              ),
              Container(
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.symmetric(horizontal: 42, vertical: 12),
                // height: 50,
                height: screenSize.height * 0.05,
                width: screenSize.width * 0.46,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Icon(CupertinoIcons.shopping_cart, color: Colors.white,),
                      SizedBox(width: 8,),
                      Text("Add to Cart", style: GoogleFonts.inter(
                        color: Colors.white,
                      ),)
                    ],
                  )
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

