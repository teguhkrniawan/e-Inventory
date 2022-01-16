import 'dart:async';

import 'package:e_inventory/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  // properti disini 

  // onStart()
  @override
  void initState(){
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(context, '/sign-in', (route) => false)
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: navyColor,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo_e_inventory.PNG')
            )
          ),
        ),
      ),
    );
  }
}