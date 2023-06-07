import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flowery/const.dart';
import 'package:flowery/main.dart';
import 'package:flowery/screens/sign_in.dart';
import 'package:flowery/screens/shop_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const id = 'RegistrationScreen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _FocusNode = FocusNode();
  bool _showpic = true;
  @override
  void initState() {
    super.initState();
    _FocusNode.addListener(() {
      setState(() {
        _showpic = !_FocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        _FocusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _showpic
                  ? Image.asset(('assets/images/tenor.gif'), height: 303)
                  : SizedBox(height: 80),
              TextField(
                decoration:
                    KStyleTextField.copyWith(hintText: "example@gmail.com"),
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                focusNode: _FocusNode,
                onChanged: (value) {},
                onTap: () {
                  _FocusNode.unfocus();
                  FocusScope.of(context).unfocus();
                },
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                decoration: KStyleTextField.copyWith(hintText: "*********"),
                textAlign: TextAlign.center,
                obscureText: true,
                focusNode: _FocusNode,
                onChanged: (value) {
                  //Do something with the user input.
                },
                onTap: () {
                  _FocusNode.unfocus();
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
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ShopScreen.id);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
