import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hồ sơ'),
        backgroundColor: const Color(0xff222428),
      ),
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