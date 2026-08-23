import 'package:first_app/PracticScreen/practic_srceen_1.dart';
import 'package:first_app/PracticScreen/practic_srceen_2.dart';
import 'package:first_app/Screen/screen_1.dart';
import 'package:first_app/Screen/screen_2.dart';
import 'package:first_app/splash_screen.dart';
// import 'package:first_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      // ),
      // home: const PracticeScreen2(),
      // home: const Screen2()
      home: SplashScreen(),
    );
  }
}

