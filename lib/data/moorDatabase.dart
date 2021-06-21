import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";

part 'moorDatabase.g.dart';

class Products extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get thumbnail => text()();
  IntColumn get price => integer()();
  TextColumn get shortDescription => text()();
}

class Customers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get avatar => text()();
  TextColumn get phone => text()();
  TextColumn get address => text()();
}

// This annotation tells the code generator which tables this DB works with
@UseMoor(tables: [Products, Customers])
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
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) {
          return m.createAll();
        },
      );

  Future<List<Product>> getAllProducts() => select(products).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Product>> watchAllProducts() => select(products).watch();

  Future insertProduct(Product product) => into(products).insert(product);

  // Updates a Products with a matching primary key
  Future updateProduct(Product product) => update(products).replace(product);

  Future deleteProduct(Product product) => delete(products).delete(product);

  Future<List<Customer>> getAllCustomers() => select(customers).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Customer>> watchAllCustomers() => select(customers).watch();

  Future insertCustomer(Customer customer) => into(customers).insert(customer);

  // Updates a Products with a matching primary key
  Future updateCustomer(Customer customer) =>
      update(customers).replace(customer);

  Future deleteCustomer(Customer customer) =>
      delete(customers).delete(customer);
}
