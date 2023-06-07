import 'package:flowery/screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flowery/const.dart';
import 'package:flowery/main.dart';
import 'package:flowery/screens/sign_in.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailFocusNode = FocusNode();
  final _emailController = TextEditingController();
  bool _showImage = true;
  @override
  void initState() {
    super.initState();
    _emailFocusNode.addListener(() {
      setState(() {
        _showImage = !_emailFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _emailFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        _emailFocusNode.unfocus();
      },
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    _showImage
                        ? Image.asset(('assets/images/tenor.gif'), height: 303)
                        : SizedBox(height: 80),
                    TextField(
                      controller: _emailController,
                      decoration: KStyleTextField.copyWith(
                        hintText: "example@gmail.com",
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      focusNode: _emailFocusNode,
                      onChanged: (value) {},
                      onTap: () {
                        _emailFocusNode.unfocus();
                        FocusScope.of(context).unfocus();
                      },
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    TextField(
                      decoration:
                          KStyleTextField.copyWith(hintText: "*********"),
                      textAlign: TextAlign.center,
                      obscureText: true,
                      focusNode: _emailFocusNode,
                      onChanged: (value) {
                        //Do something with the user input.
                      },
                      onTap: () {
                        _emailFocusNode.unfocus();
                        FocusScope.of(context).unfocus();
                      },
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Material(
                        color: Color(kgreencolor),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, ShopScreen.id);
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: Text(
                            'Log In',
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                        leading: Text(
                          "     dont have a account?",
                          style: TextStyle(fontSize: 17),
                        ),
                        title: TextButton(
                          onPressed: () {
                            dispose();

                            Navigator.pushNamed(context, RegistrationScreen.id);
                          },
                          child: Text(
                            "Create an account",
                            style: TextStyle(
                              color: Color(kgreencolor),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
