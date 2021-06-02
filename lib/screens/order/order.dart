import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';


class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
        backgroundColor: const Color(0xff222428),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Danh sách đơn hàng'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}