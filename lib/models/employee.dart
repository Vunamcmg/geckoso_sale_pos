import "package:meta/meta.dart";

class EmployeeModel {
  final String id;
  final String firstName;
  final String lastName;
  final String avatar;
  final String phone;
  final String address;
  final String position;

  EmployeeModel(
      {@required this.id = "",
      @required this.firstName = "",
      @required this.lastName = "",
      @required this.avatar = "",
      @required this.phone = "",
      @required this.address = "",
      @required this.position = ""});

  static List<EmployeeModel> generate() {
    return [
      EmployeeModel(
          id: "1",
          firstName: "Trần",
          lastName: "Trọng Kim",
          phone: "0343538585",
          address: "Quảng Phú",
          position: "Quản lý",
          avatar:
              "https://noidangsong.vn/files/uploads/fb1735058496563345/1526444239-tt_avatar_small.jpg"),
      EmployeeModel(
        id: "2",
        firstName: "Vũ",
        lastName: "Hoài Nam",
        phone: "0343538585",
        address: "CưMgar",
        position: "Nhân viên",
        avatar:
            "https://noidangsong.vn/files/uploads/fb1735058496563345/1526444239-tt_avatar_small.jpg",
      ),
      EmployeeModel(
          id: "3",
          firstName: "Nguyễn",
          lastName: "Phương Nga",
          phone: "0343538585",
          address: "Đăk Lăk",
          position: "Nhân viên",
          avatar:
              "https://noidangsong.vn/files/uploads/fb1735058496563345/1526444239-tt_avatar_small.jpg")
    ];
  }
}
