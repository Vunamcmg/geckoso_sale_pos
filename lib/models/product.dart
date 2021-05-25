import "package:meta/meta.dart";

class Product {
  final String? name;
  final String? thumbnail;
  final String? price;
  final String? shortDescription;

  Product(
      {@required this.name,
      @required this.thumbnail,
      @required this.price,
      @required this.shortDescription});
}
