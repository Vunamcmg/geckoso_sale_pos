import 'package:flutter/material.dart';
import 'package:pos/models/product.dart';

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
    final productListHeight = size.height - 64 * 2 - 32 * 2 - 160 - 80 - 100;
    const double padding = 8;
    return Container(
        height: productListHeight,
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
                    margin: const EdgeInsets.all(padding),
                    padding: const EdgeInsets.all(padding),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey)),
                    height: productListHeight / 2 - padding * 2,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(padding * 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.network(products[index].thumbnail,
                                  height:
                                      (productListHeight / 2 - padding * 2) *
                                          3 /
                                          4,
                                  width: 300,
                                  fit: BoxFit.fill),
                            ],
                          ),
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
                              child: Text(products[index].price.toString(),
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
