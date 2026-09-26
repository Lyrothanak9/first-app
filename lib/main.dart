import 'package:first_app/Screen/home_screen.dart';
import 'package:first_app/Screen/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'Screen/board_screen.dart';
import 'Screen/main_screen.dart';
import 'Screen/sign_up.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
      url: 'https://uqlszlvhibuvkulaomnc.supabase.co',
      publishableKey: 'sb_publishable_pcoDyCIOkZDEE_vB7GMlzw_IRcVOPp9'
  );
  final session = Supabase.instance.client.auth.currentSession;
  final bool isLoggedIn = session != null;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: isLoggedIn ? '/' : '/auth',
      routes: {
        '/' : (context) => BoardScreen(),
        '/auth' : (context) => SignInScreen(),
      },
    );
  }
}

