import 'package:flowery/screens/loading_screen.dart';
import 'package:flowery/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flowery/screens/login_screen.dart';
import 'package:flowery/screens/sign_in.dart';
import 'package:flowery/screens/shop_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => ShopScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ShopScreen.id: (context) => ShopScreen()
      },
    );
  }
}
