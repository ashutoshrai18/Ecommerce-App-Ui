import 'package:ecommerce_app_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  final String imageUrl;
  final String productName;
  const ProductPage(
      {super.key, required this.imageUrl, required this.productName});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: height),
        child: Column(
          children: [
            const SizedBox(height: 15),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
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
                          icon: const ImageIcon(
                            AssetImage("assets/images/back.png"),
                            color: Colors.black,
                            size: 17,
                          ),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 45,
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
                            AssetImage("assets/images/bag.png"),
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // do something
                          },
                        ),
                      ),
                    ])),
            const SizedBox(height: 20),

            // this page ui start here
            Container(
              child: Column(
                children: [
                  Container(
                    child: Text(widget.productName,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 200,
                        child: Image.network(widget.imageUrl),
                      ),
                      Container(
                        width: 100,
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
                        child: Column(
                          children: [],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
