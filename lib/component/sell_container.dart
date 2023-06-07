import 'package:flutter/material.dart';

import '../const.dart';

class SellContainer extends StatelessWidget {
  final int? image;
  final String? name;
  final String? price;
  SellContainer({this.image, this.name, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(width: 2.5, color: Color(kgreencolor))),
      width: 50,
      height: 50,
      child: Stack(
        children: [
          Positioned(
            right: 25,
            top: 25,
            child: Image.asset(
              "assets/images/${image!}.jpg",
              height: 15,
              width: 15,
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: ListTile(
              leading: Text("${name!}"),
              subtitle: Text("${price!}"),
            ),
          ),
        ],
      ),
    );
  }
}
// Container(
//       child: Column(
//         children: [
//           Image.asset("assets/images/$image.jpg"),
//           Text("$name\n$price"),
//         ],
//       ),
//     );