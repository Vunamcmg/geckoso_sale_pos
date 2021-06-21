import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";
import 'package:pos/components/appbar.dart';
import 'package:pos/components/footer.dart';
import 'package:pos/components/searchBox.dart';
import 'package:pos/models/employee.dart';
import 'package:pos/screens/bill/bill.dart';

class Order extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OrderPageState();
  }
}

class OrderPageState extends State<Order> {
  final employees = EmployeeModel.generate();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context, "ĐƠN HÀNG"),
        bottomNavigationBar: const Footer(),
        body: Container(
            color: Colors.grey.shade200,
            height: size.height,
            child: Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.all(32),
                padding: EdgeInsets.all(16),
                color: Colors.white,
                child: Column(
                  children: [
                    SearchBox(
                      title: "Tìm kiếm đơn hàng",
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
                                'Chức vụ',
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
                                'Thao tác',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                          rows: employees.map((customer) {
                            return DataRow(cells: <DataCell>[
                              DataCell(Text(customer.firstName +
                                  " " +
                                  customer.lastName)),
                              DataCell(Text(customer.phone)),
                              DataCell(Text(customer.position)),
                              DataCell(Text(customer.address)),
                              DataCell(
                                OutlinedButton(
                                  child: Text("Chi tiết"),
                                  style: OutlinedButton.styleFrom(
                                      primary: Colors.white,
                                      backgroundColor: Colors.red),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bill()),
                                    );
                                  },
                                ),
                              ),
                            ]);
                          }).toList()),
                    ),
                  ],
                ))));
  }
}
