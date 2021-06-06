import "package:flutter/widgets.dart";
import 'package:flutter/material.dart';
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';
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
    print('Return product: ${productItem}');
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
          padding: const EdgeInsets.fromLTRB(48, 8, 38, 8),
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
                      ? Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Image.network(product!.thumbnail,
                                      height: 300,
                                      width: 300,
                                      fit: BoxFit.fill),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Flexible(
                                    child: Container(
                                      margin:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                      child: Text(product!.name,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              color: Color(0xff000000))),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Flexible(
                                    child: Text(product!.price,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.red)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Flexible(
                                    child: Text(product!.shortDescription,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 20, color: Colors.red)),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      : Text(
                          "Chưa chọn sản phẩm nào",
                          style: const TextStyle(
                              fontSize: 20, color: Colors.black),
                        ),
                ),
              )
            ],
          ),
        ));
  }
}

class ProductLists extends StatelessWidget {
  const ProductLists(
      {Key? key,
      required this.size,
      required this.products,
      required this.viewProductDetail})
      : super(key: key);

  final Size size;
  final List<ProductModel> products;
  final Function viewProductDetail;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: size.height * 0.7,
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
        child: Container(
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey)),
                    height: 600,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.network(products[index].thumbnail,
                                height: 300, width: 300, fit: BoxFit.fill),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                                padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Flexible(
                              child: Text(products[index].price,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.red)),
                            )
                          ],
                        ),
                      ],
                    )),
                onTap: () {
                  viewProductDetail(products[index].id);
                },
              );
            },
          ),
        ));
  }
}

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
