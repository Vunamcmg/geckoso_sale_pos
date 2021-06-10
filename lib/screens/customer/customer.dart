import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';
import 'package:pos/components/searchBox.dart';
import 'package:pos/models/customer.dart';

class Customer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomerPageState();
  }
}

class CustomerPageState extends State<Customer> {
  final customers = CustomerModel.generate();

  void print() {}

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context, "KHÁCH HÀNG"),
        bottomNavigationBar: const Footer(),
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
                    SearchBox(
                      title: "Tìm kiếm khách hàng",
                    ),
                    Container(
                      width: size.width,
                      child: DataTable(
                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'Tên',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Số điện thoại',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Địa chỉ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Đơn hàng',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Doanh thu',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                          rows: customers.map((customer) {
                            return DataRow(cells: <DataCell>[
                              DataCell(Text(customer.firstName +
                                  " " +
                                  customer.lastName)),
                              DataCell(Text(customer.phone)),
                              DataCell(Text(customer.address)),
                              DataCell(Text('1')),
                              DataCell(Text('1.000.000đ')),
                            ]);
                          }).toList()),
                    ),
                  ],
                ))));
  }
}
