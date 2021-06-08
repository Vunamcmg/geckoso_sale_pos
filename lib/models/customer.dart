import "package:meta/meta.dart";

class CustomerModel {
  final String id;
  final String firstName;
  final String lastName;
  final String avatar;
  final String phone;
  final String address;

  CustomerModel(
      {@required this.id = "",
      @required this.firstName = "",
      @required this.lastName = "",
      @required this.avatar = "",
      @required this.phone = "",
      @required this.address = ""});

  static List<CustomerModel> generate() {
    return [
      CustomerModel(
          id: "1",
          firstName: "Trần",
          lastName: "Trọng Kim",
          phone: "0343538585",
          address: "Quảng Phú",
          avatar:
              "https://noidangsong.vn/files/uploads/fb1735058496563345/1526444239-tt_avatar_small.jpg"),
      CustomerModel(
        id: "2",
        firstName: "Vũ",
        lastName: "Hoài Nam",
        phone: "0343538585",
        address: "CưMgar",
        avatar:
            "https://noidangsong.vn/files/uploads/fb1735058496563345/1526444239-tt_avatar_small.jpg",
      ),
      CustomerModel(
          id: "3",
          firstName: "Nguyễn",
          lastName: "Phương Nga",
          phone: "0343538585",
          address: "Đăk Lăk",
          avatar:
              "https://noidangsong.vn/files/uploads/fb1735058496563345/1526444239-tt_avatar_small.jpg")
    ];
  }
}
