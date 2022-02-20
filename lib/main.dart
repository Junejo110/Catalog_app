import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlineshop_app/pages/Home_page.dart';
import 'package:onlineshop_app/pages/login_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      routes: {
        "/": (context) => loginpage(),
        "/home": (context) => Homepage(),
        "/login": (context) => loginpage(),
      },
    );
  }
}
