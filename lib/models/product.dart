import 'dart:ffi';

import "package:meta/meta.dart";

class ProductModel {
  String id = "";
  String name = "";
  String thumbnail = "";
  int price = 0;
  String shortDescription = "";

  ProductModel(
      {required this.id,
      required this.name,
      required this.thumbnail,
      required this.price,
      required this.shortDescription});

  @override
  String toString() {
    return 'Product: {name: ${name}, price: ${price}}, shortDescription: ${shortDescription}';
  }

  static List<ProductModel> productsGenerate() {
    return [
      ProductModel(
          id: "1",
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables."),
      ProductModel(
          id: "2",
          name: "Máy lọc nước",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables."),
      ProductModel(
          id: "3",
          name: "Bàn ủi điện",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables."),
      ProductModel(
          id: "4",
          name: "Tivi to",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables."),
      ProductModel(
          id: "5",
          name: "Máy sấy nhỏ",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables."),
      ProductModel(
          id: "6",
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables."),
      ProductModel(
          id: "7",
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables."),
      ProductModel(
          id: "8",
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables."),
      ProductModel(
          id: "9",
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: 8567112,
          shortDescription:
              "So far, this page has used only stateless widgets. Stateless widgets receive arguments from their parent widget, which they store in final member variables.")
    ];
  }
  // Product.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       thumbnail = json['thumbnail'],
  //       price: json['price'],
  //       shortDescription: json['shortDescription'];

  // Map<String, dynamic> toJson() => {
  //       'name': name,
  //       'price': price,
  //       'thumbnail':thumbnail,
  //       'shortDescription': shortDescription
  //     };
}
