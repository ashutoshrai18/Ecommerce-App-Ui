import 'package:ecommerce_app_ui/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget toolBar(context) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Container(
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
        icon: const ImageIcon(
          const AssetImage("assets/images/menu-bar.png"),
          color: Colors.black,
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
    ),
    Container(
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
        icon: const ImageIcon(
          const AssetImage("assets/images/search.png"),
          color: Colors.black,
        ),
        onPressed: () {
          // do something
        },
      ),
    ),
  ]);
}

Widget titleName(context, {String title = ""}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      Container(
        child: const Text(
          "See all",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ),
    ],
  );
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) => Container(
              margin: const EdgeInsets.only(left: 15, bottom: 15, top: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffe8e8e8),
                    blurRadius: 6,
                    offset: Offset(0, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              width: 200,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(6),
                    height: 220,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/product_3.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: const [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  "Product Name",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Product Name",
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xffFA5D43),
                              blurRadius: 4,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: const Color(0xffFA5D43),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: IconButton(
                          iconSize: 25,
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
              )),
        ),
      ),
    );
  }
}
