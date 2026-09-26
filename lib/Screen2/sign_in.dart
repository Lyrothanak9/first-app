import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: screenSize.height * 0.2,
            child: Container(
              color: Colors.red,
            ),
          ),
          Text("Login to BUI Food"),
          SizedBox(
            height: screenSize.height * 0.05,
            child: Container(
              color: Colors.red,
            ),
          ),

        ],
      ),
    );
  }
}
