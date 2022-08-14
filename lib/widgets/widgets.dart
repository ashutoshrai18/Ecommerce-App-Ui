import 'package:ecommerce_app_ui/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget toolBar(context) {
  return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        {'asset': 'menu-bar.png', 'onPressed': () {}},
        {'asset': 'search.png', 'onPressed': () {}}
      ]
          .map(
            (e) => Container(
              width: 45,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffe8e8e8),
                    blurRadius: 6,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: IconButton(
                color: Colors.white,
                icon: ImageIcon(
                  AssetImage("assets/images/${e['asset']}"),
                  color: Colors.black,
                  size: 17,
                ),
                onPressed: e['onPressed'] as Function(),
              ),
            ),
          )
          .toList());
}

Widget titleName(context, {String title = ""}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      Container(
        child: const Text(
          "See all",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
    ],
  );
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String imageUrl;
  const ProductCard(
      {super.key, required this.productName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20, bottom: 15, top: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Color(0xffe8e8e8),
              blurRadius: 25,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
        ),
        width: 230,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              height: 230,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        productName,
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      // ignore: prefer_const_constructors
                      Text(
                        "\$60.66",
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0xffFA5D43),
                        offset: Offset(0, 3),
                      ),
                    ],
                    color: const Color(0xffFA5D43),
                  ),
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    top: 10,
                  ),
                  child: IconButton(
                    iconSize: 20,
                    icon: const Icon(
                      Icons.favorite_rounded,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
