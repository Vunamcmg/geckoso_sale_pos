import "package:meta/meta.dart";

class Voucher {
  final String? name;
  final String? thumbnail;
  final String? price;
  final String? shortDescription;

  Voucher(
      {@required this.name,
      @required this.thumbnail,
      @required this.price,
      @required this.shortDescription});
}
