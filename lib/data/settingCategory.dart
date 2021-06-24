import "package:moor/moor.dart";
import "package:moor_flutter/moor_flutter.dart";
import 'package:pos/data/moorDatabase.dart';

part 'settingCategory.g.dart';

class SettingCategories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 50)();
}

@UseDao(tables: [SettingCategories])
class SettingCategoriesDao extends DatabaseAccessor<AppDatabase>
    with _$SettingCategoriesDaoMixin {
  // this constructor is required so that the main database can create an instance
  // of this object.
  SettingCategoriesDao(AppDatabase db) : super(db);

  // Future<List<Setting>> getAllSettings() => select(settings).get();

  // // Moor supports Streams which emit elements when the watched data changes
  // Stream<List<Setting>> watchAllSettings() => select(settings).watch();

  // Future insertSetting(Setting setting) => into(settings).insert(setting);

  // // Updates a Settings with a matching primary key
  // Future updateSetting(Setting setting) => update(settings).replace(setting);

  // Future deleteSetting(Setting setting) => delete(settings).delete(setting);
}
