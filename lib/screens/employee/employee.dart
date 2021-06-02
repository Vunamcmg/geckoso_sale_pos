import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';


class Employee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee'),
        backgroundColor: const Color(0xff222428),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Nhân viên'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}