import 'package:demo_app_commerce/pages/home_page.dart';
import 'package:demo_app_commerce/pages/login.dart';
import 'package:demo_app_commerce/utilites/routes.dart';
import 'package:demo_app_commerce/widgets/primary.dart';
import 'package:flutter/material.dart';

import 'pages/cateloge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: homepage(),
      themeMode: ThemeMode.light,
      theme: MyPrimary.light(context),

      routes: {
        "/": (context) => login(),
        MyAppRoutes.HomeRoutes: (context) => homepage(),
        MyAppRoutes.LoginRoutes: (context) => login(),
        MyAppRoutes.CateLoges:(context) => cateLoges(),
      },
    );
  }
}
