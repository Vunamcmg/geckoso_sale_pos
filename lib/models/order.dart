import "package:meta/meta.dart";

class Order {
  final String? name;
  final String? thumbnail;
  final String? price;
  final String? shortDescription;

  Order(
      {@required this.name,
      @required this.thumbnail,
      @required this.price,
      @required this.shortDescription});
}
