import 'package:flutter/material.dart';

class CartAmount extends StatelessWidget {
  const CartAmount({
    Key? key,
    required this.subTotalAmount,
    required this.discountAmount,
    required this.taxAmount,
    required this.totalAmount,
  }) : super(key: key);

  final int subTotalAmount;
  final int discountAmount;
  final int taxAmount;
  final int totalAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8, bottom: 8),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 4, bottom: 4),
            child: Row(
              children: [
                Text("Tam tinh"),
                Spacer(),
                Text(subTotalAmount.toString()),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, bottom: 4),
            child: Row(
              children: [
                Text("Khuyến mãi"),
                Spacer(),
                Text(discountAmount.toString()),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, bottom: 4),
            child: Row(
              children: [
                Text("Thuế"),
                Spacer(),
                Text(taxAmount.toString()),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 4, bottom: 8),
            child: Row(
              children: [
                Text("Tổng tiền"),
                Spacer(),
                Text(totalAmount.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
