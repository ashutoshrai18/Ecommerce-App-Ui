import 'dart:ui';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:ecommerce_app_ui/data/data.dart';
import 'package:ecommerce_app_ui/model/products_model.dart';
import 'package:ecommerce_app_ui/pages/product_page.dart';
import 'package:ecommerce_app_ui/utils/constants.dart';
import 'package:ecommerce_app_ui/utils/my_bottom_nav_bar.dart';
import 'package:ecommerce_app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductsModel> products = [];
  int currentPageIndex = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    products = getProducts();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: height),
            child: Column(children: [
              const SizedBox(height: 15),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: toolBar(
                    context,
                  )),
              const SizedBox(height: 20),
              Column(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: titleName(context, title: "New Arrival")),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 340,
                    child: Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 15,
                        itemBuilder: (BuildContext context, int index) =>
                            InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductPage(
                                          imageUrl: products[index].imageUrl!,
                                          productName:
                                              products[index].productName!,
                                        )));
                          },
                          child: ProductCard(
                              productName: products[index].productName!,
                              imageUrl: products[index].imageUrl!),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      child: titleName(context, title: "Collection")),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 190,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                // ignore: prefer_const_literals_to_create_immutables
                                boxShadow: [
                                  const BoxShadow(
                                    color: Color(0xffe8e8e8),
                                    blurRadius: 25,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              ),
                              width: 140,
                              child: Stack(children: [
                                SizedBox(
                                  height: 190,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      products[index].imageUrl!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: BlurryContainer(
                                      blur: 5,
                                      width: 200,
                                      height: 50,
                                      elevation: 0,
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          products[index].productName!,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      )),
                                ),
                              ]),
                            )),
                  )
                ],
              ),
            ]),
          ),
        ),
        bottomNavigationBar: MyBottomNavBar());
  }
}
