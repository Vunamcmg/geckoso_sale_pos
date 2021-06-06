import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';

class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "ĐƠN HÀNG"),
      bottomNavigationBar: Footer(),
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
