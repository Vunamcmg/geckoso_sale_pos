import "package:meta/meta.dart";

class Customer {
  final String? name;
  final String? thumbnail;
  final String? price;
  final String? shortDescription;

  Customer(
      {@required this.name,
      @required this.thumbnail,
      @required this.price,
      @required this.shortDescription});
}
