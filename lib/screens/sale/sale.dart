import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';


class Sale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale'),
        backgroundColor: const Color(0xff222428),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Bán hàng'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}