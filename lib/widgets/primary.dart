import 'package:flutter/material.dart';

class MyPrimary {
  static ThemeData light(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 255, 255, 255),
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
        ),
        primaryColor: Color.fromARGB(255, 108, 99, 255),
      );
}
