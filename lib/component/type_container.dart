import 'package:flowery/const.dart';
import 'package:flowery/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flowery/screens/login_screen.dart';
import 'package:flowery/screens/sign_in.dart';
import 'package:flowery/screens/shop_screen.dart';

class TypeContainer extends StatelessWidget {
  final String? image_path;
  final String? name;

  @override
  TypeContainer({this.image_path, this.name});
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color(kblackcolor)
                    .withOpacity(0.5), // sets the shadow color
                spreadRadius: 5, // sets the spread radius of the shadow
                blurRadius: 10, // sets the blur radius of the shadow
                offset: Offset(0, 6), // sets the offset of the shadow
              ),
            ],
            borderRadius: BorderRadius.circular(25),
            border: Border.all(width: 2.5, color: Color(kgreencolor))),
        child: Column(
          children: [
            Image.asset(
              image_path!,
              width: 60,
              height: 60,
            ),
            Text(
              "$name",
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}
