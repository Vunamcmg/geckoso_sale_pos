import 'dart:ffi';

import "package:meta/meta.dart";

class ProductModel {
  String name = "";
  String thumbnail = "";
  String price = "";
  String shortDescription = "";

  ProductModel(
      {required this.name,
      required this.thumbnail,
      required this.price,
      required this.shortDescription});

  static List<ProductModel> productsGenerate() {
    return [
      ProductModel(
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: ""),
      ProductModel(
          name: "Máy lọc nước",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: ""),
      ProductModel(
          name: "Bàn ủi điện",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: ""),
      ProductModel(
          name: "Tivi to",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: ""),
      ProductModel(
          name: "Máy sấy nhỏ",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: ""),
      ProductModel(
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: ""),
      ProductModel(
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: ""),
      ProductModel(
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: ""),
      ProductModel(
          name: "Tủ lạnh Aqua Inverter 270 lít AQR-IG288EN (GB)",
          thumbnail:
              "https://cdn.nguyenkimmall.com/images/thumbnails/600/336/detailed/575/10040766-tu-lanh-aqua-inverter-284-lit-aqr-ig288en-gb-1.jpg",
          price: "8.567.112đ",
          shortDescription: "")
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
