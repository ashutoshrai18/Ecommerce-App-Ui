import 'package:ecommerce_app_ui/pages/home_page.dart';
import 'package:ecommerce_app_ui/pages/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        splashFactory: InkRipple.splashFactory,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
        appBarTheme: const AppBarTheme(elevation: 0),
      ),
      home: HomePage(),
    );
  }
}
