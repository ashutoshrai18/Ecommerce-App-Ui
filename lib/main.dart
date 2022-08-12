import 'package:ecommerce_app_ui/pages/home_page.dart';
import 'package:ecommerce_app_ui/pages/product_page.dart';
import 'package:ecommerce_app_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // ignore: prefer_const_constructors
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
    statusBarIconBrightness: Brightness.dark, // status bar icon color
    systemNavigationBarIconBrightness:
        Brightness.dark, // color of navigation controls
  ));
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
          primaryColor: cPrimaryColor,
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: cTextColor,
              ),
          scaffoldBackgroundColor: cBackgroundColor,
          useMaterial3: true,
          splashFactory: InkRipple.splashFactory,
          // colorSchemeSeed: Colors.blue,
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(elevation: 0),
        ),
        home: HomePage());
  }
}
