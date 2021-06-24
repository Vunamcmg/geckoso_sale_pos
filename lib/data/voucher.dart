import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/moorDatabase.dart';

part 'voucher.g.dart';

class Vouchers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get code => text()();
  TextColumn get description => text()();
  TextColumn get type => text()();
  IntColumn get limit => integer()();
  IntColumn get amount => integer()();
  DateTimeColumn get startAt => dateTime()();
  DateTimeColumn get endAt => dateTime()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get deletedAt => dateTime()();
}

@UseDao(tables: [Vouchers])
class VouchersDao extends DatabaseAccessor<AppDatabase>
    with _$VouchersDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  VouchersDao(AppDatabase db) : super(db);

  Future<List<Voucher>> getAllVouchers() => select(vouchers).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Voucher>> watchAllVouchers() => select(vouchers).watch();

  Future insertVoucher(Voucher voucher) => into(vouchers).insert(voucher);

  // Updates a Products with a matching primary key
  Future updateVoucher(Voucher voucher) => update(vouchers).replace(voucher);

  Future deleteVoucher(Voucher voucher) => delete(vouchers).delete(voucher);
}
