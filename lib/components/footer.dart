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
          Row(
            children: [
              Icon(
                Icons.shopping_cart,
                color: Colors.grey,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Text(" Bán hàng", style: TextStyle(fontSize: 24)),
            ],
          ),
          // Spacer(),
          Row(
            children: [
              Icon(
                Icons.shopping_bag,
                color: Colors.grey,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Text(" Đơn hàng", style: TextStyle(fontSize: 24)),
            ],
          ),
          // Spacer(),
          Row(
            children: [
              Icon(
                Icons.store,
                color: Colors.grey,
                size: 24.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
              Text(" Sản phẩm", style: TextStyle(fontSize: 24)),
            ],
          ),
        ],
      ),
    );
  }
}
