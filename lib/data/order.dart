import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/moorDatabase.dart';

part 'order.g.dart';

//     shippingFee: number;
//     discountAmount: number;
//     totalQuantity: number;
//     subTotalAmount: number;
//     totalAmount: number;
//     note: string;
//     isPaid: boolean;
//     paidAt: Date;
//     isFulfilled: boolean;
//     fulfilledAt: Date;
//     isRefunded: boolean;
//     refundedAt: Date;
//     status:
//         | "draft"
//         | "failed"
//         | "completed"
//         | "waiting_confirm"
//         | "waiting_delivery"
//         | "delivering"
//         | "delivered"
//         | "cancelled";

class Orders extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get code => text()();
  TextColumn get employeeId =>
      text().customConstraint('NULL REFERENCES employees(id)')();
  TextColumn get customerId =>
      text().customConstraint('NULL REFERENCES customers(id)')();
  RealColumn get shippingFee => real().withDefault(const Constant(0))();
  RealColumn get discountAmount => real().withDefault(const Constant(0))();
  RealColumn get totalQuantity => real().withDefault(const Constant(0))();
  RealColumn get subTotalAmount => real().withDefault(const Constant(0))();
  RealColumn get totalAmount => real().withDefault(const Constant(0))();
  TextColumn get note => text().nullable()();
  TextColumn get status => text()();
  BoolColumn get isPaid => boolean().withDefault(const Constant(false))();
  DateTimeColumn get paidAt => dateTime()();
  BoolColumn get isFulfilled => boolean().withDefault(const Constant(false))();
  DateTimeColumn get fulfilledAt => dateTime().nullable()();
  BoolColumn get isRefunded => boolean().withDefault(const Constant(false))();
  DateTimeColumn get refundedAt => dateTime().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime().nullable()();
}

@UseDao(tables: [Orders])
class OrdersDao extends DatabaseAccessor<AppDatabase> with _$OrdersDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  OrdersDao(AppDatabase db) : super(db);

  Future<List<Order>> getAllOrders() => select(orders).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Order>> watchAllOrders() => select(orders).watch();

  Future insertOrder(Order order) => into(orders).insert(order);

  // Updates a Products with a matching primary key
  Future updateOrder(Order order) => update(orders).replace(order);

  Future deleteOrder(Order order) => delete(orders).delete(order);
}
