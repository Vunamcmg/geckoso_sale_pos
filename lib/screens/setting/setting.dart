import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';


class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting'),
        backgroundColor: const Color(0xff222428),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Thiết lập'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}