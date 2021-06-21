import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Positioned(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: InkWell(
                  onTap: () {},
                  onHover: (value) {},
                  child: Text("Tủ lạnh",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            Expanded(
                flex: 2,
                child: Text("Máy giặt",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            Expanded(
                flex: 2,
                child: Text("Điều hoà",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            Expanded(
                flex: 2,
                child: Text("Tivi",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
