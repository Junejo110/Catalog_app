import 'package:flutter/material.dart';
import 'package:onlineshop_app/core/Store.dart';
import 'package:onlineshop_app/pages/Home_page.dart';
import 'package:onlineshop_app/pages/cart_page.dart';
import 'package:onlineshop_app/pages/login_page.dart';
import 'package:onlineshop_app/utils/Routes.dart';
import 'package:onlineshop_app/utils/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/": (context) => loginpage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => loginpage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
