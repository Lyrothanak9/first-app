import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("This text", style: TextStyle(fontSize: 10),),
                  SizedBox(height: 4,),
                  Text("This text", style: TextStyle(fontSize: 10),),
                  SizedBox(height: 4,),
                  Text("This text", style: TextStyle(fontSize: 10),),
                ],
              ),
              SizedBox(width: 30,),
              Image.asset("assets/images/Image_test.png", height: 50, width: 50,)
            ],
          ),
        )
      )
    );
  }
}
