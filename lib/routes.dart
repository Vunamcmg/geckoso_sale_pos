import "package:flutter/widgets.dart";

import "package:pos/screens/product/product.dart";
import "package:pos/screens/order/order.dart";
import "package:pos/screens/customer/customer.dart";
import "package:pos/screens/employee/employee.dart";
import "package:pos/screens/profile/profile.dart";
import "package:pos/screens/sale/sale.dart";
import "package:pos/screens/setting/setting.dart";
import "package:pos/screens/login/login.dart";
import "package:pos/screens/bill/bill.dart";

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/product": (BuildContext context) => Product(),
  "/order": (BuildContext context) => Order(),
  "/customer": (BuildContext context) => Customer(),
  "/employee": (BuildContext context) => Employee(),
  "/profile": (BuildContext context) => Profile(),
  "/sale": (BuildContext context) => Sale(),
  "/setting": (BuildContext context) => Setting(),
  "/login": (BuildContext context) => Login(),
  "/bill": (BuildContext context) => Bill(),
};
