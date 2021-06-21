import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';

class SettingCategoryModel {
  String id = "";
  String name = "";

  SettingCategoryModel({required this.id, required this.name});

  @override
  String toString() {
    return 'Setting Category: {name: ${name}, id: ${id}';
  }

  static List<SettingCategoryModel> generate() {
    return [
      SettingCategoryModel(
        id: "sale",
        name: "Bán hàng",
      ),
      SettingCategoryModel(
        id: "employee",
        name: "Nhân viên",
      ),
      SettingCategoryModel(
        id: "device",
        name: "Thiết bị",
      ),
      SettingCategoryModel(
        id: "payment",
        name: "Phương thức thanh toán",
      ),
      SettingCategoryModel(
        id: "general",
        name: "Tổng quan",
      )
    ];
  }
}

class SettingModel {
  String id = "";
  String name = "";
  String value = "";
  String valueType = "";

  SettingModel(
      {required this.id,
      required this.name,
      required this.value,
      required this.valueType});

  @override
  String toString() {
    return 'Setting: {id: ${id}, name: ${name}, value: ${value}, type: ${valueType}';
  }
}

class Setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SettingPageState();
  }
}

class SettingPageState extends State<Setting> {
  final List<SettingCategoryModel> settingCategories =
      SettingCategoryModel.generate();
  final List<String> entries = <String>[
    'Tổng quan',
    'Bán hàng',
    'Nhân viên',
    'Thiết bị',
    'Phương thức thanh toán',
  ];
  final List<SettingModel> saleSetting = <SettingModel>[
    SettingModel(
        id: "",
        name: "Luôn luôn in hoá đơn",
        value: "true",
        valueType: "boolean")
  ];
  final List<SettingModel> employeeSetting = <SettingModel>[
    SettingModel(id: "", name: "Tính điểm", value: "1", valueType: "number")
  ];
  final List<SettingModel> deviceSetting = <SettingModel>[
    SettingModel(
        id: "", name: "Máy in", value: "Brother ES250", valueType: "string"),
    SettingModel(id: "", name: "Máy quét mã", value: "1", valueType: "string")
  ];
  final List<SettingModel> paymentSetting = <SettingModel>[
    SettingModel(
        id: "", name: "Thanh toán tiền mặt", value: "", valueType: "boolean"),
    SettingModel(
        id: "", name: "Thanh toán thẻ", value: "", valueType: "boolean")
  ];
  final List<SettingModel> generalSetting = <SettingModel>[
    SettingModel(
        id: "",
        name: "Tên cửa hàng",
        value: "Ban Mê Garden",
        valueType: "string"),
    SettingModel(
        id: "",
        name: "Địa chỉ",
        value: "805 - 807 Hà Huy Tập",
        valueType: "string")
  ];
  String selectedSettingCategory = "sale";
  List<SettingModel> currentList = <SettingModel>[];

  @override
  void initState() {
    super.initState();
    currentList = generalSetting;
  }

  void handleSelectCategory(String categoryId) {
    List<SettingModel> newSetting = <SettingModel>[];
    switch (categoryId) {
      case "sale":
        newSetting = saleSetting;
        break;
      case "employee":
        newSetting = employeeSetting;
        break;
      case "device":
        newSetting = deviceSetting;
        break;
      case "payment":
        newSetting = paymentSetting;
        break;
      case "general":
        newSetting = generalSetting;
        break;
    }
    setState(() {
      selectedSettingCategory = categoryId;
      currentList = newSetting;
    });
  }

  Widget buildSettingField(SettingModel setting) {
    switch (setting.valueType) {
      case "string":
        return Container(
            child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: setting.value,
                      hintStyle: TextStyle(color: Colors.black)),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8))));
      case "number":
        return Container(
            child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                width: 400,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: setting.value,
                      hintStyle: TextStyle(color: Colors.black)),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8))));
      default:
        return Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
          child: OutlinedButton(
            child: Text("Bật"),
            style: OutlinedButton.styleFrom(
                primary: Colors.white, backgroundColor: Color(0xffce0832)),
            onPressed: () {},
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context, "THIẾT LẬP"),
        bottomNavigationBar: const Footer(),
        body: Container(
            color: Colors.grey.shade200,
            height: size.height,
            child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: ListView.separated(
                              padding: const EdgeInsets.all(8),
                              itemCount: settingCategories.length,
                              itemBuilder: (BuildContext context, int index) {
                                return InkWell(
                                    onTap: () {
                                      handleSelectCategory(
                                          settingCategories[index].id);
                                    },
                                    child: Container(
                                        height: 70,
                                        color: Colors.white,
                                        padding: EdgeInsets.only(
                                            left: 16, right: 16),
                                        child: Row(
                                          children: [
                                            Text(
                                                '${settingCategories[index].name}'),
                                            Spacer(),
                                            Text(">")
                                          ],
                                        )));
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Divider(),
                            ))),
                    VerticalDivider(
                      thickness: 1,
                      color: Color(0xFFCECECE),
                    ),
                    Expanded(
                        flex: 8,
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: ListView.separated(
                              padding: const EdgeInsets.all(8),
                              itemCount: currentList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                    height: 70,
                                    color: Colors.white,
                                    padding:
                                        EdgeInsets.only(left: 16, right: 16),
                                    child: Row(
                                      children: [
                                        Text('${currentList[index].name}'),
                                        Spacer(),
                                        buildSettingField(currentList[index]),
                                      ],
                                    ));
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      const Divider(),
                            )))
                  ],
                ))));
  }
}
