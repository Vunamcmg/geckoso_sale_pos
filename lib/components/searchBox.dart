import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    this.title = "Tìm kiếm",
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Positioned(
          child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              height: 54,
              child: TextField(
                decoration: InputDecoration(
                    hintText: title, hintStyle: TextStyle(color: Colors.black)),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)))),
    );
  }
}
