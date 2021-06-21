import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';
import 'package:pos/components/searchBox.dart';
import 'package:pos/data/moorDatabase.dart';
import 'package:pos/models/customer.dart';
import 'package:pos/models/product.dart';
import 'package:pos/screens/bill/bill.dart';
import 'package:provider/provider.dart';

import 'cartAmount.dart';
import 'categoryTab.dart';

class Sale extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SalePageState();
  }
}

class CartItem {
  int id = 0;
  String name = "";
  String thumbnail = "";
  int price = 0;
  String shortDescription = "";
  int quantity = 0;

  CartItem(
      {required this.id,
      required this.name,
      required this.thumbnail,
      required this.price,
      required this.shortDescription,
      required this.quantity});

  @override
  String toString() {
    return 'Product: {name: ${name}, price: ${price}}, shortDescription: ${shortDescription}';
  }
}

class SalePageState extends State<Sale> {
  final products = ProductModel.productsGenerate();
  final customers = CustomerModel.generate();

  CustomerModel? selectedCustomer;

  List<CartItem> items = [];
  int totalAmount = 0;
  int subTotalAmount = 0;
  int discountAmount = 0;
  int taxAmount = 0;

  @override
  void initState() {
    super.initState();
  }

  void handleChooseCustomer(CustomerModel customer) {
    setState(() {
      selectedCustomer = customer;
    });
  }

  void handleChooseVoucher() {}

  void viewProductDetail(Product product) {
    // final productItem =
    //     products.singleWhere((element) => element.id == productId);
    final itemIndex = items.indexWhere((element) => element.id == product.id);
    if (itemIndex != -1) {
      setState(() {
        items[itemIndex].quantity++;
        subTotalAmount = subTotalAmount + items[itemIndex].price;
        totalAmount = subTotalAmount + discountAmount + taxAmount;
      });
      return;
    }
    setState(() {
      items.add(CartItem(
          id: product.id,
          name: product.name,
          thumbnail: product.thumbnail,
          price: product.price,
          shortDescription: product.shortDescription,
          quantity: 1));
      subTotalAmount = subTotalAmount + product.price;
      totalAmount = subTotalAmount + discountAmount + taxAmount;
    });
  }

  void handleDeleteItem(String productId) {
    final itemIndex = items.indexWhere((element) => element.id == productId);
    setState(() {
      subTotalAmount =
          subTotalAmount - items[itemIndex].price * items[itemIndex].quantity;
      totalAmount = subTotalAmount + discountAmount + taxAmount;
      items.removeAt(itemIndex);
    });
  }

  void handleIncreaseQuantity(String productId) {
    final item = items.singleWhere((element) => element.id == productId);
    setState(() {
      item.quantity++;
      subTotalAmount = subTotalAmount + item.price;
      totalAmount = subTotalAmount + discountAmount + taxAmount;
    });
  }

  void handleDecreaseQuantity(String productId) {
    final item = items.singleWhere((element) => element.id == productId);
    if (item.quantity == 1) {
      return;
    }
    setState(() {
      item.quantity--;
      subTotalAmount = subTotalAmount - item.price;
      totalAmount = subTotalAmount + discountAmount + taxAmount;
    });
  }

  void handleChangeCustomer(CustomerModel customer) {
    setState(() {
      selectedCustomer = customer;
    });
  }

  void completeSale() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Bill()),
    );
  }

  void _showCustomerDialog(Size size) {
    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(builder: (context, setState) {
          return SimpleDialog(
            title: Text('TÌM KIẾM KHÁCH HÀNG'),
            children: [
              SearchBox(),
              Container(
                width: size.width * 0.4,
                child: _buildCustomerList(context),
              ),
              Divider(),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Thoát"),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.grey),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 120,
                      height: 40,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Chọn"),
                        style: OutlinedButton.styleFrom(
                            primary: Colors.white, backgroundColor: Colors.red),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final dialog = SimpleDialog(
      title: Text('TÌM KIẾM VOUCHER'),
      children: [
        SearchBox(),
        Container(
          width: size.width * 0.4,
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: RichText(
                    text: TextSpan(
                      text: 'DATTIEC ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '\n',
                        ),
                        TextSpan(
                            text: 'Giảm 200.000đ cho đơn hàng từ 1.000.000đ',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 16,
                                color: Colors.black)),
                      ],
                    ),
                  ))
            ],
          ),
        ),
        Divider(),
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: [
              Container(
                width: 120,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("Thoát"),
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white, backgroundColor: Colors.grey),
                ),
              ),
              Spacer(),
              Container(
                width: 120,
                height: 40,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text("Chọn"),
                  style: OutlinedButton.styleFrom(
                      primary: Colors.white, backgroundColor: Colors.red),
                ),
              )
            ],
          ),
        )
      ],
    );
    final database = Provider.of<AppDatabase>(context);
    database.insertCustomer(Customer(
        id: 1,
        firstName: "Trần",
        lastName: "Trọng Kim",
        phone: "0343538585",
        address: "Quảng Phú",
        avatar:
            "https://noidangsong.vn/files/uploads/fb1735058496563345/1526444239-tt_avatar_small.jpg"));
    return Scaffold(
        appBar: buildAppBar(context, "BÁN HÀNG"),
        bottomNavigationBar: Footer(),
        body: Container(
          color: Colors.grey.shade200,
          height: size.height,
          child: Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.all(32),
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 9,
                  child: Column(
                    children: [
                      const SearchBox(),
                      CategoryTab(),
                      _buildProductList(context, size, viewProductDetail)
                      // ProductLists(
                      //     size: size,
                      //     products: products,
                      //     viewProductDetail: viewProductDetail),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3, // 20%
                  child: items.length == 0
                      ? Container(
                          alignment: Alignment.center,
                          child: Text("Chưa chọn sản phẩm"),
                        )
                      : Container(
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Flexible(
                                      child: Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            8, 16, 16, 11),
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 8, 8, 8),
                                        child: const Text("GIỎ HÀNG",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xff000000))),
                                      ),
                                    )
                                  ],
                                ),
                                const Divider(color: Colors.black),
                                Container(
                                  // height: size.height * 0.6,
                                  child: ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Row(
                                          children: [
                                            Container(
                                              width: 50,
                                              height: 50,
                                              child: Image.network(
                                                  items[index].thumbnail,
                                                  // height: 300,
                                                  // width: 300,
                                                  fit: BoxFit.cover),
                                            ),
                                            Container(
                                              width: (size.width - 32 * 2) / 3 -
                                                  400,
                                              height: 100,
                                              alignment: Alignment.topLeft,
                                              child: Column(
                                                children: [
                                                  Text(
                                                    items[index].name,
                                                    textAlign: TextAlign.left,
                                                    overflow: TextOverflow.clip,
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.only(top: 8),
                                                    child: Row(
                                                      children: [
                                                        OutlinedButton(
                                                          style: ButtonStyle(
                                                            foregroundColor:
                                                                MaterialStateProperty
                                                                    .all<Color>(
                                                                        Colors
                                                                            .blue),
                                                          ),
                                                          onPressed: () {
                                                            handleDecreaseQuantity(
                                                                items[index]
                                                                    .id
                                                                    .toString());
                                                          },
                                                          child:
                                                              const Text('-'),
                                                        ),
                                                        Container(
                                                          width: 50,
                                                          height: 30,
                                                          child: Text(
                                                              items[index]
                                                                  .quantity
                                                                  .toString(),
                                                              textAlign:
                                                                  TextAlign
                                                                      .center),
                                                        ),
                                                        OutlinedButton(
                                                          style: ButtonStyle(
                                                            foregroundColor:
                                                                MaterialStateProperty
                                                                    .all<Color>(
                                                                        Colors
                                                                            .blue),
                                                          ),
                                                          onPressed: () {
                                                            handleIncreaseQuantity(
                                                                items[index]
                                                                    .id
                                                                    .toString());
                                                          },
                                                          child:
                                                              const Text('+'),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Spacer(),
                                            Container(
                                                width: 150,
                                                height: 100,
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      items[index]
                                                          .price
                                                          .toString(),
                                                      style: TextStyle(
                                                          fontSize: 16),
                                                    ),
                                                    GestureDetector(
                                                        onTap: () {
                                                          handleDeleteItem(
                                                              items[index]
                                                                  .id
                                                                  .toString());
                                                        },
                                                        child: Text("Xoá",
                                                            style: TextStyle(
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline))),
                                                  ],
                                                ))
                                          ],
                                        );
                                      },
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              const Divider(),
                                      itemCount: items.length),
                                ),
                                Divider(),
                                Container(
                                  // height: 30,
                                  padding: EdgeInsets.only(top: 12, bottom: 12),
                                  width: double.infinity,
                                  alignment: Alignment.topLeft,
                                  child: InkWell(
                                    onTap: () {
                                      _showCustomerDialog(size);
                                    },
                                    child: selectedCustomer != null
                                        ? Text(selectedCustomer!.firstName +
                                            " " +
                                            selectedCustomer!.lastName)
                                        : Text("Chọn khách hàng",
                                            style:
                                                TextStyle(color: Colors.red)),
                                  ),
                                ),
                                Divider(),
                                Container(
                                    // height: 30,
                                    padding:
                                        EdgeInsets.only(top: 12, bottom: 12),
                                    width: double.infinity,
                                    alignment: Alignment.topLeft,
                                    child: InkWell(
                                      onTap: () {
                                        showDialog<void>(
                                            context: context,
                                            builder: (context) => dialog);
                                      },
                                      child: Text("Thêm khuyến mãi",
                                          style: TextStyle(color: Colors.red)),
                                    )),
                                Divider(),
                                CartAmount(
                                    subTotalAmount: subTotalAmount,
                                    discountAmount: discountAmount,
                                    taxAmount: taxAmount,
                                    totalAmount: totalAmount),
                                Container(
                                  width: double.infinity,
                                  height: 40,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                        primary: Colors.red,
                                        backgroundColor: Colors.red),
                                    onPressed: () {
                                      completeSale();
                                    },
                                    child: Text(
                                      "Hoàn thành",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                )
              ],
            ),
          ),
        ));
  }
}

StreamBuilder<List<Customer>> _buildCustomerList(BuildContext context) {
  final database = Provider.of<AppDatabase>(context);

  return StreamBuilder(
    stream: database.watchAllCustomers(),
    builder: (context, AsyncSnapshot<List<Customer>> snapshot) {
      final customers = snapshot.data ?? [];
      return ListView.separated(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                onTap: () {
                  // handleChangeCustomer(customers[index]);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 16, right: 16),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        padding: EdgeInsets.all(16),
                        child: CircleAvatar(
                          backgroundImage:
                              NetworkImage(customers[index].avatar),
                        ),
                      ),
                      Container(
                          width: 300,
                          height: 100,
                          padding: EdgeInsets.all(16),
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(
                              text: customers[index].firstName +
                                  " " +
                                  customers[index].lastName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: '\n',
                                ),
                                TextSpan(
                                    text: customers[index].phone,
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        color: Colors.black)),
                              ],
                            ),
                          )),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.topLeft,
                        child: Text(customers[index].address),
                      )
                    ],
                  ),
                ));
          },
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
          itemCount: customers.length);
    },
  );
}

StreamBuilder<List<Product>> _buildProductList(
    BuildContext context, Size size, Function viewProductDetail) {
  final database = Provider.of<AppDatabase>(context);

  return StreamBuilder(
    stream: database.watchAllProducts(),
    builder: (context, AsyncSnapshot<List<Product>> snapshot) {
      final products = snapshot.data ?? [];
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
                                  padding:
                                      const EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                    viewProductDetail(products[index]);
                  },
                );
              },
            ),
          ));
    },
  );
}
