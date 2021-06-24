import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/customer.dart';
import 'package:pos/data/employee.dart';
import 'package:pos/data/orderItem.dart';
import 'package:pos/data/product.dart';
import 'package:pos/data/order.dart';
import 'package:pos/data/setting.dart';
import 'package:pos/data/voucher.dart';
import 'package:pos/screens/employee/employee.dart';

part 'moorDatabase.g.dart';

// This annotation tells the code generator which tables this DB works with
@UseMoor(tables: [
  Products,
  Customers,
  Employee,
  Orders,
  OrderItems,
  Vouchers,
  Settings
], daos: [
  ProductsDao,
  CustomersDao,
  EmployeesDao,
  OrdersDao,
  OrderItemsDao,
  VouchersDao,
  SettingsDao
])
// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      // Specify the location of the database file
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: true,
        )));

  // Bump this when changing tables and columns.
  // Migrations will be covered in the next part.
  @override
  int get schemaVersion => 5;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        // Runs if the database has already been opened on the device with a lower version
        onUpgrade: (migrator, from, to) async {
          if (from == 1) {
            await migrator.createTable(customers);
          }
        },
        // beforeOpen: (db, details) async {
        //   await db.customStatement('PRAGMA foreign_keys = ON');
        // },
      );
}
