import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

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
                    hintText: "Tìm kiếm sản phẩm",
                    hintStyle: TextStyle(color: Colors.black)),
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)))),
    );
  }
}
