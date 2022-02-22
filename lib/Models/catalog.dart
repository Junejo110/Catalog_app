class CatalogModels {
  static final Items = [
    Item(
      color: 'Black ',
      desc: 'Apple Iphone 12th generation',
      id: 1,
      image:
          'https://assets.swappie.com/swappie-product-iphone-12-pro-max-pacific-blue.png',
      name: 'Iphone 12 pro max',
      price: 999,
    )
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
