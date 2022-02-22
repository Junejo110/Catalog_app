import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlineshop_app/Models/catalog.dart';
import '../utils/widgets/Items_Widgets.dart';
import '../utils/widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text(
            "Catalog App",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: GoogleFonts.poppins().fontFamily,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: CatalogModels.Items.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModels.Items[index],
          );
        },
      ),
      drawer: const Mydrawer(),
    );
  }
}
