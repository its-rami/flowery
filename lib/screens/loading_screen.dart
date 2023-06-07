import 'dart:async';
import 'package:flowery/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flowery/const.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'login_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  static const id = "loading_screen";
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/tenor2.gif",
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 30,
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Loading',
                    textStyle:
                        TextStyle(fontSize: 20, color: Color(kblackcolor))),
                TypewriterAnimatedText('Loading',
                    textStyle:
                        TextStyle(fontSize: 20, color: Color(kblackcolor))),
                TypewriterAnimatedText('Loading',
                    textStyle:
                        TextStyle(fontSize: 20, color: Color(kblackcolor))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
