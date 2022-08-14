import 'package:ecommerce_app_ui/pages/home_page.dart';
import 'package:ecommerce_app_ui/pages/product_page.dart';
import 'package:ecommerce_app_ui/pages/splash_sceen.dart';
import 'package:ecommerce_app_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // ignore: prefer_const_constructors
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.transparent, // navigation bar color
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
          fontFamily: 'OpenSans',
          primaryColor: cPrimaryColor,
          scaffoldBackgroundColor: const Color(0xffEEEDF0),
          useMaterial3: true,
          splashFactory: InkRipple.splashFactory,
          // colorSchemeSeed: Colors.blue,
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(elevation: 0),
        ),
        home: const HomePage());
  }
}
