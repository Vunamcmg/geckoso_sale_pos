import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(48, 8, 48, 8),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const FooterSection(
              title: "Bán hàng",
              navigator: "/sale",
              icon: Icon(Icons.shopping_cart, color: Colors.grey, size: 24.0)),
          const FooterSection(
              title: "Đơn hàng",
              navigator: "/order",
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.grey,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              )),
          const FooterSection(
              title: "Sản phẩm",
              navigator: "/product",
              icon: Icon(
                Icons.store,
                color: Colors.grey,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              )),
        ],
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection(
      {Key? key,
      this.icon =
          const Icon(Icons.shopping_cart, color: Colors.grey, size: 24.0),
      this.title = "Bán hàng",
      this.navigator = "/sale"})
      : super(key: key);
  final Icon icon;
  final String title;
  final String navigator;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {Navigator.pushNamed(context, navigator)},
        child: Row(
          children: [
            icon,
            Text(" $title", style: TextStyle(fontSize: 24)),
          ],
        ));
  }
}
