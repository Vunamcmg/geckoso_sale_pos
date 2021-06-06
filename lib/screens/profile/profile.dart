import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "HỒ SƠ"),
      bottomNavigationBar: Footer(),
      body: Center(
        child: ElevatedButton(
          child: const Text('Hồ sơ cá nhân'),
          onPressed: () {
            // Navigate to second route when tapped.
          },
        ),
      ),
    );
  }
}
