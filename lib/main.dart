import 'package:e_inventory/pages/menu_parent_page.dart';
import 'package:e_inventory/pages/sign_in_page.dart';
import 'package:e_inventory/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => SplashPage(),
        '/sign-in' : (context) => SignInPage(),
        '/main-home': (context) => MenuParentPage(),
      },
    );
  }
}