import 'package:flutter/material.dart';
import 'package:onlineshop_app/pages/Home_page.dart';
import 'package:onlineshop_app/pages/login_page.dart';
import 'package:onlineshop_app/utils/Routes.dart';
import 'package:onlineshop_app/utils/widgets/themes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const loginpage(),
        MyRoutes.homeRoute: (context) => const Homepage(),
        MyRoutes.loginRoute: (context) => const loginpage(),
      },
    );
  }
}
