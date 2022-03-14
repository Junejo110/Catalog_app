import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/widgets/themes.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App"
            .text
            .textStyle(GoogleFonts.poppins())
            .xl5
            .bold
            .color(MyTheme.darkBluishColor)
            .make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
