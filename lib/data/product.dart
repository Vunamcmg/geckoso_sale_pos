import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/moorDatabase.dart';

part 'product.g.dart';

class Products extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get thumbnail => text()();
  IntColumn get price => integer()();
  TextColumn get shortDescription => text()();
}

@UseDao(tables: [Products])
class ProductsDao extends DatabaseAccessor<AppDatabase>
    with _$ProductsDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  ProductsDao(AppDatabase db) : super(db);

  Future<List<Product>> getAllProducts() => select(products).get();

  // Moor supports Streams which emit elements when the watched data changes
  Stream<List<Product>> watchAllProducts() => select(products).watch();

  Future insertProduct(Product product) => into(products).insert(product);

  // Updates a Products with a matching primary key
  Future updateProduct(Product product) => update(products).replace(product);

  Future deleteProduct(Product product) => delete(products).delete(product);
}
