import 'package:flutter/material.dart';
import 'package:onlineshop_app/Home_page.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homepage());
  }
}
