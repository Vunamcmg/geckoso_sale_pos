import "package:meta/meta.dart";

class Employee {
  final String? name;
  final String? thumbnail;
  final String? price;
  final String? shortDescription;

  Employee(
      {@required this.name,
      @required this.thumbnail,
      @required this.price,
      @required this.shortDescription});
}
