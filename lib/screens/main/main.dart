import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';
import 'package:pos/components/footer.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GECKOSO SALE POS',
            style: TextStyle(fontSize: 24, color: Colors.black)),
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.black),
        //   onPressed: () => Navigator.of(context).pop(),
        // ),
      ),
      bottomNavigationBar: Footer(),
      body: Container(
          padding: const EdgeInsets.fromLTRB(48, 8, 38, 8),
          child: Row(children: [
            Expanded(flex: 8, child: SectionList()),
            Expanded(
              flex: 4,
              child: Text("Leu leu"),
            )
          ])),
    );
  }
}

class SectionList extends StatelessWidget {
  const SectionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        // maxCrossAxisExtent: 300.0,
        children: <Widget>[
          const SectionCard(
              title: "Bán hàng",
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
                size: 120.0,
              )),
          const SectionCard(
              title: "Sản phẩm",
              icon: Icon(
                Icons.store,
                color: Colors.grey,
                size: 120.0,
              )),
          const SectionCard(
              title: "Đơn hàng",
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
                size: 120.0,
              )),
          const SectionCard(
              title: "Khách hàng",
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
                size: 120.0,
              )),
          const SectionCard(
              title: "Nhân viên",
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
                size: 120.0,
              )),
          const SectionCard(
              title: "Thiết lập",
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
                size: 120.0,
              )),
        ],
      ),
    );
  }
}

class SectionCard extends StatelessWidget {
  const SectionCard({
    Key? key,
    this.title = "",
    this.icon = const Icon(
      Icons.shopping_cart,
      color: Colors.grey,
      size: 120.0,
    ),
  }) : super(key: key);
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey)),
          padding: const EdgeInsets.all(6),
          child: Stack(children: [
            Positioned(
              left: 32,
              bottom: 64,
              child: icon,
            ),
            Positioned(
              left: 32,
              bottom: 32,
              child: Text(title,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            )
          ])),
      onTap: () {
        // Navigate to the second screen using a named route.
        Navigator.pushNamed(context, '/sale');
      },
    );
  }
}
