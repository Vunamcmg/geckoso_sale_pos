import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/moorDatabase.dart';

part 'orderItem.g.dart';

class OrderItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get orderId =>
      text().customConstraint('NULL REFERENCES orders(id)')();
  TextColumn get productId =>
      text().customConstraint('NULL REFERENCES products(id)')();
  RealColumn get price => real().withDefault(const Constant(1))();
  RealColumn get quantity => real().withDefault(const Constant(1))();
  RealColumn get discountAmount => real().withDefault(const Constant(0))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime()();
}

@UseDao(tables: [OrderItems])
class OrderItemsDao extends DatabaseAccessor<AppDatabase>
    with _$OrderItemsDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  OrderItemsDao(AppDatabase db) : super(db);

  Future<List<OrderItem>> getAllOrderItems() => select(orderItems).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<OrderItem>> watchAllOrderItems() => select(orderItems).watch();

  Future insertOrderItem(OrderItem orderItem) =>
      into(orderItems).insert(orderItem);

  // Updates a Products with a matching primary key
  Future updateOrderItem(OrderItem orderItem) =>
      update(orderItems).replace(orderItem);

  Future deleteOrderItem(OrderItem orderItem) =>
      delete(orderItems).delete(orderItem);
}
