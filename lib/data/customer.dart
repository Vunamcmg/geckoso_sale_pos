import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/moorDatabase.dart';

part 'customer.g.dart';

@DataClassName("Customer")
class Customers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get avatar => text()();
  TextColumn get phone => text()();
  TextColumn get address => text()();
}

@UseDao(tables: [Customers])
class CustomersDao extends DatabaseAccessor<AppDatabase>
    with _$CustomersDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  CustomersDao(AppDatabase db) : super(db);

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
