
import 'package:first_app/Screen/form_screen_1.dart';
import 'package:first_app/Screen/form_screen_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'PracticScreen/practice_1.dart';
import 'PracticScreen/practice_srceen_1.dart';
import 'PracticScreen/practice_srceen_2.dart';
import 'Screen/form_screen_1.dart';

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
      home: FormScreen1(),
    );
  }
}

