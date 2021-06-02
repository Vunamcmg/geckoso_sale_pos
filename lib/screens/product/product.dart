import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';
import 'package:pos/models/product.dart';

class Product extends StatelessWidget {
  final products = ProductModel.productsGenerate();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SẢN PHẨM',
              style: TextStyle(fontSize: 24, color: Colors.black)),
          backgroundColor: Colors.white,
          toolbarHeight: 80,
        ),
        body: Row(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.
                color: const Color(0xfff9fafb),
                child: Container(
                    width: 1000,
                    height: 1000,
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                    child: Column(children: [
                      Container(color: Colors.red),
                      GridView.builder(
                        itemCount: products.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 9 / 10,
                                crossAxisSpacing: 4.0,
                                mainAxisSpacing: 4.0),
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                            child: Container(
                                margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey)),
                                height: 600,
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Image.network(products[index].thumbnail,
                                            height: 300,
                                            width: 300,
                                            fit: BoxFit.fill),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Flexible(
                                          child: Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                8, 8, 8, 8),
                                            padding: const EdgeInsets.fromLTRB(
                                                8, 8, 8, 8),
                                            child: Text(products[index].name,
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Color(0xff000000))),
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Flexible(
                                          child: Text(products[index].price,
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black)),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            onTap: () {
                              // Navigate to the second screen using a named route.
                              Navigator.pushNamed(context, '/setting');
                            },
                            // child: <Widget>[
                            //   Text(products[index].name,
                            //       style: const TextStyle(
                            //           fontSize: 20, color: Color(0xfff2f2f2))),
                            // ],
                            // color: const Color(0xfffffff),
                          );
                        },
                      )
                    ])),
              ),
            ),
            Expanded(
              flex: 4, // 20%
              child: Container(color: Colors.white),
            )
          ],
        ));
  }
}
