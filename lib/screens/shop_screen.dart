import 'package:flowery/component/sell_container.dart';
import 'package:flowery/const.dart';
import 'package:flowery/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flowery/component/type_container.dart';

Map? plant = {
  1: ["assets/images/1.jpg", "Juniper", "19.99\$"],
  2: ["assets/images/2.jpg", "Larch Bonsai", "34.9\$"],
  3: ["assets/images/3.jpg", "Bonsai", "29.99\$"],
  4: ["assets/images/4.jpg", "Chinese Elm", "39.99\$"],
  5: ["assets/images/5.jpg", "Paper Flower Bonsai", "44.99\$"],
  6: ["assets/images/6.jpg", "Aloe Vera", "9.99\$"],
  7: ["assets/images/7.jpg", "Cactus", "8.99\$"],
  8: ["assets/images/8.jpg", "Medium Cactus", "15.99\$"],
  9: ["assets/images/9.jpg", "Flora Bunda", "22.99\$"],
  10: ["assets/images/10.jpg", "Blue Myrtle", "34.99\$"],
  11: [],
  12: [],
  13: [],
  14: [],
  15: []
};

class ShopScreen extends StatelessWidget {
  static const id = "shop_screen";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                const ListTile(
                  leading: Text(
                    "Discover",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  trailing: CircleAvatar(),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: KStyleTextField.copyWith(
                    suffixIcon: Icon(Icons.search),
                    hintText: "Search here",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TypeContainer(
                      image_path: KTree_path,
                      name: "Trees",
                    ),
                    TypeContainer(image_path: Kcactues_path, name: "Cactus"),
                    TypeContainer(image_path: Krose_path, name: "Flower"),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  child: Container(
                    height: 477,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        SellContainer(
                            image: index,
                            name: plant!["$index"][1],
                            price: plant!["$index"][2]);
                      },
                      physics: BouncingScrollPhysics(),
                      itemCount: 6,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
