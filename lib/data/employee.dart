import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/moorDatabase.dart';

part 'employee.g.dart';

@DataClassName("Customer")
class Employees extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get firstName => text()();
  TextColumn get lastName => text()();
  TextColumn get avatar => text()();
  TextColumn get phone => text()();
  TextColumn get address => text()();
  TextColumn get roll => text()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime()();
}

@UseDao(tables: [Employees])
class EmployeesDao extends DatabaseAccessor<AppDatabase>
    with _$EmployeesDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  EmployeesDao(AppDatabase db) : super(db);

  Future<List<Employee>> getAllEmployees() => select(employees).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Employee>> watchAllEmployees() => select(employees).watch();

  Future insertEmployee(Employee employee) => into(employees).insert(employee);

  // Updates a Products with a matching primary key
  Future updateEmployee(Employee employee) =>
      update(employees).replace(employee);

  Future deleteEmployee(Employee employee) =>
      delete(employees).delete(employee);
}
