import 'package:velocity_x/velocity_x.dart';

import 'package:onlineshop_app/Models/catalog.dart';

import '../Models/cart.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;
  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
