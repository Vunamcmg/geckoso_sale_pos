import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';

class Employee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "NHÂN VIÊN"),
      bottomNavigationBar: Footer(),
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
