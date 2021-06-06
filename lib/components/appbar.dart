import 'package:flutter/material.dart';

AppBar buildAppBar(context, String title) {
  return AppBar(
    title: Text('$title',
        style: const TextStyle(fontSize: 24, color: Colors.black)),
    backgroundColor: Colors.white,
    toolbarHeight: 80,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
  );
}
