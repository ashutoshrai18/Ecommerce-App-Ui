import 'package:ecommerce_app_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: cPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: ImageIcon(
              AssetImage("assets/images/categories.png"),
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: ImageIcon(
              AssetImage("assets/images/bag.png"),
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: ImageIcon(
              AssetImage("assets/images/heart.png"),
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: ImageIcon(
              AssetImage("assets/images/user.png"),
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
