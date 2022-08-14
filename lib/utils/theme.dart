import 'package:flutter/material.dart';

import 'constants.dart';

final baseTheme = ThemeData(
  fontFamily: 'OpenSans',
  useMaterial3: true,
  splashFactory: InkRipple.splashFactory,
  // colorSchemeSeed: Colors.blue,
  textTheme: const TextTheme(bodyText2: TextStyle(fontSize: 22)),
  appBarTheme: const AppBarTheme(elevation: 0),
);

final lightTheme = baseTheme.copyWith(
  scaffoldBackgroundColor: const Color(0xffEEEDF0),
  primaryColor: cPrimaryColor,
  brightness: Brightness.light,
  textTheme: baseTheme.textTheme.copyWith(
    bodyText2: baseTheme.textTheme.bodyText2?.copyWith(color: Colors.red),
  ),
);
final darkTheme = baseTheme.copyWith(
  scaffoldBackgroundColor: const Color(0xffEEEDF0),
  primaryColor: cPrimaryColor,
  brightness: Brightness.dark,
  textTheme: baseTheme.textTheme.copyWith(
    bodyText2: baseTheme.textTheme.bodyText2?.copyWith(color: Colors.red),
  ),
);
