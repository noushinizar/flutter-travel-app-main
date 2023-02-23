import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travel_app/ui/home_page.dart';



class SplashFlip extends StatefulWidget {
  const SplashFlip({Key? key}) : super(key: key);

  @override
  State<SplashFlip> createState() => _SplashFlipState();
}

class _SplashFlipState extends State<SplashFlip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(

            height:400,
            width: 350,
            child: Image(
              image: AssetImage('assets/images/splash.png'),
              fit: BoxFit.cover,

            ),
          )),
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }
}
