import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';
import 'package:pos/components/productList.dart';
import 'package:pos/components/searchBox.dart';
import 'package:pos/models/product.dart';

class Product extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProductPageState();
  }
}

class ProductPageState extends State<Product> {
  final products = ProductModel.productsGenerate();
  ProductModel? product;
  bool isSelectProduct = false;

  void viewProductDetail(String productId) {
    final productItem =
        products.singleWhere((element) => element.id == productId);
    setState(() {
      isSelectProduct = true;
      product = productItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context, "SẢN PHẨM"),
        bottomNavigationBar: Footer(),
        body: Container(
          color: Colors.grey.shade200,
          height: size.height,
          child: Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(64),
            padding: EdgeInsets.all(32),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    children: [
                      const SearchBox(),
                      Container(
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
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold))),
                              ),
                              Expanded(
                                  flex: 2,
                                  child: Text("Máy giặt",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                              Expanded(
                                  flex: 2,
                                  child: Text("Điều hoà",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold))),
                              Expanded(
                                  flex: 2,
                                  child: Text("Tivi",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)))
                            ],
                          ),
                        ),
                      ),
                      ProductLists(
                          size: size,
                          products: products,
                          viewProductDetail: viewProductDetail),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4, // 20%
                  child: Container(
                    color: Colors.white,
                    alignment: Alignment.center,
                    // child: Text(
                    //   "Chưa chọn sản phẩm nào",
                    //   style: const TextStyle(fontSize: 20, color: Colors.black),
                    // ),

                    child: isSelectProduct
                        ? ProductDetailCard(product: product)
                        : Text(
                            "Chưa chọn sản phẩm nào",
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black),
                          ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class ProductDetailCard extends StatelessWidget {
  const ProductDetailCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel? product;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(product!.thumbnail,
                  // height: 300,
                  // width: 300,
                  fit: BoxFit.cover),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Flexible(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                  child: Text(product!.name,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 20, color: Color(0xff000000))),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Flexible(
                  child: Text(product!.price.toString(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 20, color: Colors.red)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Flexible(
                  child: Text("Còn 5 sản phẩm trong kho",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          decoration: TextDecoration.underline)),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Text(product!.shortDescription,
                    textAlign: TextAlign.left,
                    style: const TextStyle(fontSize: 16, color: Colors.black)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
