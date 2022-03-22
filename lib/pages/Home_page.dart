import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:onlineshop_app/utils/Routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:onlineshop_app/utils/widgets/themes.dart';
import '../Models/catalog.dart';
import 'Home_widgets.dart/catalog_header.dart';
import 'Home_widgets.dart/catalog_list.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Adnan";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 3));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoute);
          },
          backgroundColor: MyTheme.darkBluishColor,
          child: Icon(
            CupertinoIcons.cart,
          ),
        ).badge(
          color: Vx.red500,
          size: 15,
        ),
        body: SafeArea(
          child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  const Padding(
                    padding: EdgeInsets.all(120.0),
                    child: LoadingIndicator(
                      indicatorType: Indicator.ballRotateChase,
                      colors: [(Colors.black)],
                      strokeWidth: 2,
                    ),
                  ).centered().expand(),
              ],
            ),
          ),
        ));
  }
}
