import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';
import 'package:pos/models/product.dart';

class Bill extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BillPageState();
  }
}

class BillPageState extends State<Bill> {
  final products = ProductModel.productsGenerate();
  bool isSelectProduct = false;

  void print() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context, "HOÁ ĐƠN"),
        bottomNavigationBar: Footer(),
        body: Container(
            color: Colors.grey.shade200,
            height: size.height,
            child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.all(64),
                padding: EdgeInsets.all(32),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            child: RichText(
                          text: TextSpan(
                            text: 'Đơn hàng #123',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                            children: const <TextSpan>[
                              TextSpan(
                                text: '\n',
                              ),
                              TextSpan(
                                  text: '16:12 12/06/2021',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16)),
                            ],
                          ),
                        )),
                        Spacer(),
                        Container(
                          child: OutlinedButton(
                            child: Text("In hoá đơn"),
                            style: OutlinedButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.red),
                            onPressed: () {
                              print();
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 32),
                    Row(
                      children: [
                        Container(
                            child: RichText(
                          text: TextSpan(
                            text: 'Khách hàng',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                            children: const <TextSpan>[
                              TextSpan(
                                text: '\n',
                              ),
                              TextSpan(
                                text: 'Vũ Hoài Nam\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                              TextSpan(
                                text: '0343538585\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                              TextSpan(
                                text: 'Quảng Phú, CưMgar, Đăk Lăk\n',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                    Divider(),
                    Container(
                      height: size.height * 0.4,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                              onTap: () {},
                              child: Container(
                                margin: EdgeInsets.only(left: 16, right: 16),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      height: 100,
                                      padding: EdgeInsets.all(16),
                                      child: Image.network(
                                          products[index].thumbnail,
                                          // height: 300,
                                          // width: 300,
                                          fit: BoxFit.cover),
                                    ),
                                    Container(
                                        width: 300,
                                        height: 100,
                                        padding: EdgeInsets.all(16),
                                        alignment: Alignment.topLeft,
                                        child: RichText(
                                            text: TextSpan(
                                          text: products[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black),
                                        ))),
                                    Spacer(),
                                    Container(
                                      padding: EdgeInsets.all(16),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                          products[index].price.toString()),
                                    )
                                  ],
                                ),
                              ));
                        },
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 32),
                    Row(
                      children: [
                        Container(),
                        Spacer(),
                        Container(
                          alignment: Alignment.topRight,
                          width: 300,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text("Tạm tính: "),
                                  Spacer(),
                                  Text(
                                    "100.000đ",
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Khuyến mãi: "),
                                  Spacer(),
                                  Text(
                                    "100.000đ",
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Thuế: "),
                                  Spacer(),
                                  Text(
                                    "100.000đ",
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Tổng tiền: "),
                                  Spacer(),
                                  Text(
                                    "100.000đ",
                                    textAlign: TextAlign.right,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}
