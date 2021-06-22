import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/customer.dart';
import 'package:pos/data/product.dart';

part 'moorDatabase.g.dart';

// This annotation tells the code generator which tables this DB works with
@UseMoor(tables: [Products, Customers], daos: [ProductsDao, CustomersDao])
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
      );
}
