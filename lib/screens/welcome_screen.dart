import 'package:flowery/const.dart';
import 'package:flowery/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = "WelcomeScreen";
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              "assets/images/tenor.gif",
              height: 250,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          DefaultTextStyle(
            style: const TextStyle(
              fontSize: 50,
              color: Color(kgreencolor),
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Flowery',
                    textStyle: TextStyle(color: Color(kgreencolor))),
                WavyAnimatedText('Flowery',
                    textStyle: TextStyle(color: Color(kgreencolor))),
                WavyAnimatedText('Flowery',
                    textStyle: TextStyle(color: Color(kgreencolor))),
                WavyAnimatedText('Flowery',
                    textStyle: TextStyle(color: Color(kgreencolor))),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, LoginScreen.id);
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(kgreencolor)),
              child: Text(
                "Get Start",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
