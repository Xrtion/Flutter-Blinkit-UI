import 'dart:async';
import 'package:blinkit_clone/domain/constants/appcolors.dart';
import 'package:blinkit_clone/repository/screens/logins/loginscreen.dart';
import 'package:blinkit_clone/repository/widgets/Uihelper.dart';
import 'package:flutter/material.dart';

class Splahscreen extends StatefulWidget {
  @override
  State<Splahscreen> createState() => _SplahscreenState();
}

class _SplahscreenState extends State<Splahscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginscreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFf8b920),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Uihelper.CustomImage(img: "image 1 (2).png"),
          ],
        ),
      ),
    );
  }
}