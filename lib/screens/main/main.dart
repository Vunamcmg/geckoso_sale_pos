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
            const Expanded(flex: 8, child: SectionList()),
            const Expanded(
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
    Size size = MediaQuery.of(context).size;
    return Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
      child: Column(
        children: [
          Container(
            height: (size.height - 180) / 3,
            padding: EdgeInsets.only(top: 16, bottom: 8),
            child: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: SectionCard(
                        title: "Bán hàng",
                        navigator: "/sale",
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                          size: 120.0,
                        ))),
                SizedBox(
                  width: 16,
                ),
                const Expanded(
                    flex: 1,
                    child: SectionCard(
                        title: "Sản phẩm",
                        navigator: "/product",
                        icon: Icon(
                          Icons.store,
                          color: Colors.grey,
                          size: 120.0,
                        )))
              ],
            ),
          ),
          Container(
            height: (size.height - 180) / 3,
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: SectionCard(
                        title: "Đơn hàng",
                        navigator: "/order",
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                          size: 120.0,
                        ))),
                SizedBox(
                  width: 16,
                ),
                const Expanded(
                    flex: 1,
                    child: SectionCard(
                        title: "Khách hàng",
                        navigator: "/customer",
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                          size: 120.0,
                        )))
              ],
            ),
          ),
          Container(
            height: (size.height - 180) / 3,
            padding: EdgeInsets.only(top: 8, bottom: 8),
            child: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: SectionCard(
                        title: "Nhân viên",
                        navigator: "/employee",
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                          size: 120.0,
                        ))),
                SizedBox(
                  width: 16,
                ),
                const Expanded(
                    flex: 1,
                    child: SectionCard(
                        title: "Thiết lập",
                        navigator: "/setting",
                        icon: Icon(
                          Icons.shopping_cart,
                          color: Colors.grey,
                          size: 120.0,
                        )))
              ],
            ),
          )
        ],
      ),
    ));
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
    this.navigator = "/sale",
  }) : super(key: key);
  final String title;
  final Icon icon;
  final String navigator;
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
        Navigator.pushNamed(context, navigator);
      },
    );
  }
}
