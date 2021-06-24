// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moorDatabase.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Product extends DataClass implements Insertable<Product> {
  final int id;
  final String name;
  final String thumbnail;
  final int price;
  final String shortDescription;
  final String? barCode;
  final String? qrCode;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Product(
      {required this.id,
      required this.name,
      required this.thumbnail,
      required this.price,
      required this.shortDescription,
      this.barCode,
      this.qrCode,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt});
  factory Product.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Product(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      thumbnail: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}thumbnail'])!,
      price: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price'])!,
      shortDescription: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}short_description'])!,
      barCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}bar_code']),
      qrCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}qr_code']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      deletedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['thumbnail'] = Variable<String>(thumbnail);
    map['price'] = Variable<int>(price);
    map['short_description'] = Variable<String>(shortDescription);
    if (!nullToAbsent || barCode != null) {
      map['bar_code'] = Variable<String?>(barCode);
    }
    if (!nullToAbsent || qrCode != null) {
      map['qr_code'] = Variable<String?>(qrCode);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['deleted_at'] = Variable<DateTime>(deletedAt);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      name: Value(name),
      thumbnail: Value(thumbnail),
      price: Value(price),
      shortDescription: Value(shortDescription),
      barCode: barCode == null && nullToAbsent
          ? const Value.absent()
          : Value(barCode),
      qrCode:
          qrCode == null && nullToAbsent ? const Value.absent() : Value(qrCode),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: Value(deletedAt),
    );
  }

  factory Product.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Product(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      thumbnail: serializer.fromJson<String>(json['thumbnail']),
      price: serializer.fromJson<int>(json['price']),
      shortDescription: serializer.fromJson<String>(json['shortDescription']),
      barCode: serializer.fromJson<String?>(json['barCode']),
      qrCode: serializer.fromJson<String?>(json['qrCode']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'thumbnail': serializer.toJson<String>(thumbnail),
      'price': serializer.toJson<int>(price),
      'shortDescription': serializer.toJson<String>(shortDescription),
      'barCode': serializer.toJson<String?>(barCode),
      'qrCode': serializer.toJson<String?>(qrCode),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  Product copyWith(
          {int? id,
          String? name,
          String? thumbnail,
          int? price,
          String? shortDescription,
          String? barCode,
          String? qrCode,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? deletedAt}) =>
      Product(
        id: id ?? this.id,
        name: name ?? this.name,
        thumbnail: thumbnail ?? this.thumbnail,
        price: price ?? this.price,
        shortDescription: shortDescription ?? this.shortDescription,
        barCode: barCode ?? this.barCode,
        qrCode: qrCode ?? this.qrCode,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Product(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('price: $price, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('barCode: $barCode, ')
          ..write('qrCode: $qrCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              thumbnail.hashCode,
              $mrjc(
                  price.hashCode,
                  $mrjc(
                      shortDescription.hashCode,
                      $mrjc(
                          barCode.hashCode,
                          $mrjc(
                              qrCode.hashCode,
                              $mrjc(
                                  createdAt.hashCode,
                                  $mrjc(updatedAt.hashCode,
                                      deletedAt.hashCode))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Product &&
          other.id == this.id &&
          other.name == this.name &&
          other.thumbnail == this.thumbnail &&
          other.price == this.price &&
          other.shortDescription == this.shortDescription &&
          other.barCode == this.barCode &&
          other.qrCode == this.qrCode &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class ProductsCompanion extends UpdateCompanion<Product> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> thumbnail;
  final Value<int> price;
  final Value<String> shortDescription;
  final Value<String?> barCode;
  final Value<String?> qrCode;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.price = const Value.absent(),
    this.shortDescription = const Value.absent(),
    this.barCode = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String thumbnail,
    required int price,
    required String shortDescription,
    this.barCode = const Value.absent(),
    this.qrCode = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required DateTime deletedAt,
  })  : name = Value(name),
        thumbnail = Value(thumbnail),
        price = Value(price),
        shortDescription = Value(shortDescription),
        deletedAt = Value(deletedAt);
  static Insertable<Product> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? thumbnail,
    Expression<int>? price,
    Expression<String>? shortDescription,
    Expression<String?>? barCode,
    Expression<String?>? qrCode,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (price != null) 'price': price,
      if (shortDescription != null) 'short_description': shortDescription,
      if (barCode != null) 'bar_code': barCode,
      if (qrCode != null) 'qr_code': qrCode,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
    });
  }

  ProductsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? thumbnail,
      Value<int>? price,
      Value<String>? shortDescription,
      Value<String?>? barCode,
      Value<String?>? qrCode,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<DateTime>? deletedAt}) {
    return ProductsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      thumbnail: thumbnail ?? this.thumbnail,
      price: price ?? this.price,
      shortDescription: shortDescription ?? this.shortDescription,
      barCode: barCode ?? this.barCode,
      qrCode: qrCode ?? this.qrCode,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<String>(thumbnail.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (shortDescription.present) {
      map['short_description'] = Variable<String>(shortDescription.value);
    }
    if (barCode.present) {
      map['bar_code'] = Variable<String?>(barCode.value);
    }
    if (qrCode.present) {
      map['qr_code'] = Variable<String?>(qrCode.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('price: $price, ')
          ..write('shortDescription: $shortDescription, ')
          ..write('barCode: $barCode, ')
          ..write('qrCode: $qrCode, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products with TableInfo<$ProductsTable, Product> {
  final GeneratedDatabase _db;
  final String? _alias;
  $ProductsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _thumbnailMeta = const VerificationMeta('thumbnail');
  @override
  late final GeneratedTextColumn thumbnail = _constructThumbnail();
  GeneratedTextColumn _constructThumbnail() {
    return GeneratedTextColumn(
      'thumbnail',
      $tableName,
      false,
    );
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedIntColumn price = _constructPrice();
  GeneratedIntColumn _constructPrice() {
    return GeneratedIntColumn(
      'price',
      $tableName,
      false,
    );
  }

  final VerificationMeta _shortDescriptionMeta =
      const VerificationMeta('shortDescription');
  @override
  late final GeneratedTextColumn shortDescription =
      _constructShortDescription();
  GeneratedTextColumn _constructShortDescription() {
    return GeneratedTextColumn(
      'short_description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _barCodeMeta = const VerificationMeta('barCode');
  @override
  late final GeneratedTextColumn barCode = _constructBarCode();
  GeneratedTextColumn _constructBarCode() {
    return GeneratedTextColumn(
      'bar_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _qrCodeMeta = const VerificationMeta('qrCode');
  @override
  late final GeneratedTextColumn qrCode = _constructQrCode();
  GeneratedTextColumn _constructQrCode() {
    return GeneratedTextColumn(
      'qr_code',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedDateTimeColumn createdAt = _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn('created_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedDateTimeColumn updatedAt = _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn('updated_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  @override
  late final GeneratedDateTimeColumn deletedAt = _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        thumbnail,
        price,
        shortDescription,
        barCode,
        qrCode,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $ProductsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'products';
  @override
  final String actualTableName = 'products';
  @override
  VerificationContext validateIntegrity(Insertable<Product> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('thumbnail')) {
      context.handle(_thumbnailMeta,
          thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta));
    } else if (isInserting) {
      context.missing(_thumbnailMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('short_description')) {
      context.handle(
          _shortDescriptionMeta,
          shortDescription.isAcceptableOrUnknown(
              data['short_description']!, _shortDescriptionMeta));
    } else if (isInserting) {
      context.missing(_shortDescriptionMeta);
    }
    if (data.containsKey('bar_code')) {
      context.handle(_barCodeMeta,
          barCode.isAcceptableOrUnknown(data['bar_code']!, _barCodeMeta));
    }
    if (data.containsKey('qr_code')) {
      context.handle(_qrCodeMeta,
          qrCode.isAcceptableOrUnknown(data['qr_code']!, _qrCodeMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta));
    } else if (isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Product map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Product.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(_db, alias);
  }
}

class Customer extends DataClass implements Insertable<Customer> {
  final int id;
  final String firstName;
  final String lastName;
  final String avatar;
  final String phone;
  final String address;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Customer(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.avatar,
      required this.phone,
      required this.address,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt});
  factory Customer.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Customer(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      firstName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}first_name'])!,
      lastName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}last_name'])!,
      avatar: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}avatar'])!,
      phone: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}phone'])!,
      address: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}address'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      deletedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    map['avatar'] = Variable<String>(avatar);
    map['phone'] = Variable<String>(phone);
    map['address'] = Variable<String>(address);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['deleted_at'] = Variable<DateTime>(deletedAt);
    return map;
  }

  CustomersCompanion toCompanion(bool nullToAbsent) {
    return CustomersCompanion(
      id: Value(id),
      firstName: Value(firstName),
      lastName: Value(lastName),
      avatar: Value(avatar),
      phone: Value(phone),
      address: Value(address),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: Value(deletedAt),
    );
  }

  factory Customer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Customer(
      id: serializer.fromJson<int>(json['id']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      avatar: serializer.fromJson<String>(json['avatar']),
      phone: serializer.fromJson<String>(json['phone']),
      address: serializer.fromJson<String>(json['address']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'avatar': serializer.toJson<String>(avatar),
      'phone': serializer.toJson<String>(phone),
      'address': serializer.toJson<String>(address),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  Customer copyWith(
          {int? id,
          String? firstName,
          String? lastName,
          String? avatar,
          String? phone,
          String? address,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? deletedAt}) =>
      Customer(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        avatar: avatar ?? this.avatar,
        phone: phone ?? this.phone,
        address: address ?? this.address,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Customer(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('avatar: $avatar, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          firstName.hashCode,
          $mrjc(
              lastName.hashCode,
              $mrjc(
                  avatar.hashCode,
                  $mrjc(
                      phone.hashCode,
                      $mrjc(
                          address.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(updatedAt.hashCode,
                                  deletedAt.hashCode)))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Customer &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.avatar == this.avatar &&
          other.phone == this.phone &&
          other.address == this.address &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class CustomersCompanion extends UpdateCompanion<Customer> {
  final Value<int> id;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> avatar;
  final Value<String> phone;
  final Value<String> address;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const CustomersCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.avatar = const Value.absent(),
    this.phone = const Value.absent(),
    this.address = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  CustomersCompanion.insert({
    this.id = const Value.absent(),
    required String firstName,
    required String lastName,
    required String avatar,
    required String phone,
    required String address,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required DateTime deletedAt,
  })  : firstName = Value(firstName),
        lastName = Value(lastName),
        avatar = Value(avatar),
        phone = Value(phone),
        address = Value(address),
        deletedAt = Value(deletedAt);
  static Insertable<Customer> custom({
    Expression<int>? id,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? avatar,
    Expression<String>? phone,
    Expression<String>? address,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (avatar != null) 'avatar': avatar,
      if (phone != null) 'phone': phone,
      if (address != null) 'address': address,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
    });
  }

  CustomersCompanion copyWith(
      {Value<int>? id,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String>? avatar,
      Value<String>? phone,
      Value<String>? address,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<DateTime>? deletedAt}) {
    return CustomersCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      avatar: avatar ?? this.avatar,
      phone: phone ?? this.phone,
      address: address ?? this.address,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (avatar.present) {
      map['avatar'] = Variable<String>(avatar.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomersCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('avatar: $avatar, ')
          ..write('phone: $phone, ')
          ..write('address: $address, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }
}

class $CustomersTable extends Customers
    with TableInfo<$CustomersTable, Customer> {
  final GeneratedDatabase _db;
  final String? _alias;
  $CustomersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _firstNameMeta = const VerificationMeta('firstName');
  @override
  late final GeneratedTextColumn firstName = _constructFirstName();
  GeneratedTextColumn _constructFirstName() {
    return GeneratedTextColumn(
      'first_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lastNameMeta = const VerificationMeta('lastName');
  @override
  late final GeneratedTextColumn lastName = _constructLastName();
  GeneratedTextColumn _constructLastName() {
    return GeneratedTextColumn(
      'last_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _avatarMeta = const VerificationMeta('avatar');
  @override
  late final GeneratedTextColumn avatar = _constructAvatar();
  GeneratedTextColumn _constructAvatar() {
    return GeneratedTextColumn(
      'avatar',
      $tableName,
      false,
    );
  }

  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedTextColumn phone = _constructPhone();
  GeneratedTextColumn _constructPhone() {
    return GeneratedTextColumn(
      'phone',
      $tableName,
      false,
    );
  }

  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedTextColumn address = _constructAddress();
  GeneratedTextColumn _constructAddress() {
    return GeneratedTextColumn(
      'address',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedDateTimeColumn createdAt = _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn('created_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedDateTimeColumn updatedAt = _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn('updated_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  @override
  late final GeneratedDateTimeColumn deletedAt = _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        firstName,
        lastName,
        avatar,
        phone,
        address,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $CustomersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'customers';
  @override
  final String actualTableName = 'customers';
  @override
  VerificationContext validateIntegrity(Insertable<Customer> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('avatar')) {
      context.handle(_avatarMeta,
          avatar.isAcceptableOrUnknown(data['avatar']!, _avatarMeta));
    } else if (isInserting) {
      context.missing(_avatarMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta));
    } else if (isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Customer map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Customer.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CustomersTable createAlias(String alias) {
    return $CustomersTable(_db, alias);
  }
}

class Order extends DataClass implements Insertable<Order> {
  final int id;
  final String code;
  final String employeeId;
  final String customerId;
  final double shippingFee;
  final double discountAmount;
  final double totalQuantity;
  final double subTotalAmount;
  final double totalAmount;
  final String? note;
  final String status;
  final bool isPaid;
  final DateTime paidAt;
  final bool isFulfilled;
  final DateTime? fulfilledAt;
  final bool isRefunded;
  final DateTime? refundedAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? deletedAt;
  Order(
      {required this.id,
      required this.code,
      required this.employeeId,
      required this.customerId,
      required this.shippingFee,
      required this.discountAmount,
      required this.totalQuantity,
      required this.subTotalAmount,
      required this.totalAmount,
      this.note,
      required this.status,
      required this.isPaid,
      required this.paidAt,
      required this.isFulfilled,
      this.fulfilledAt,
      required this.isRefunded,
      this.refundedAt,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt});
  factory Order.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Order(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      employeeId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}employee_id'])!,
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}customer_id'])!,
      shippingFee: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}shipping_fee'])!,
      discountAmount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}discount_amount'])!,
      totalQuantity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}total_quantity'])!,
      subTotalAmount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}sub_total_amount'])!,
      totalAmount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}total_amount'])!,
      note: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}note']),
      status: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}status'])!,
      isPaid: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_paid'])!,
      paidAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}paid_at'])!,
      isFulfilled: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_fulfilled'])!,
      fulfilledAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fulfilled_at']),
      isRefunded: const BoolType()
          .mapFromDatabaseResponse(data['${effectivePrefix}is_refunded'])!,
      refundedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}refunded_at']),
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      deletedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['code'] = Variable<String>(code);
    map['employee_id'] = Variable<String>(employeeId);
    map['customer_id'] = Variable<String>(customerId);
    map['shipping_fee'] = Variable<double>(shippingFee);
    map['discount_amount'] = Variable<double>(discountAmount);
    map['total_quantity'] = Variable<double>(totalQuantity);
    map['sub_total_amount'] = Variable<double>(subTotalAmount);
    map['total_amount'] = Variable<double>(totalAmount);
    if (!nullToAbsent || note != null) {
      map['note'] = Variable<String?>(note);
    }
    map['status'] = Variable<String>(status);
    map['is_paid'] = Variable<bool>(isPaid);
    map['paid_at'] = Variable<DateTime>(paidAt);
    map['is_fulfilled'] = Variable<bool>(isFulfilled);
    if (!nullToAbsent || fulfilledAt != null) {
      map['fulfilled_at'] = Variable<DateTime?>(fulfilledAt);
    }
    map['is_refunded'] = Variable<bool>(isRefunded);
    if (!nullToAbsent || refundedAt != null) {
      map['refunded_at'] = Variable<DateTime?>(refundedAt);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime?>(deletedAt);
    }
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: Value(id),
      code: Value(code),
      employeeId: Value(employeeId),
      customerId: Value(customerId),
      shippingFee: Value(shippingFee),
      discountAmount: Value(discountAmount),
      totalQuantity: Value(totalQuantity),
      subTotalAmount: Value(subTotalAmount),
      totalAmount: Value(totalAmount),
      note: note == null && nullToAbsent ? const Value.absent() : Value(note),
      status: Value(status),
      isPaid: Value(isPaid),
      paidAt: Value(paidAt),
      isFulfilled: Value(isFulfilled),
      fulfilledAt: fulfilledAt == null && nullToAbsent
          ? const Value.absent()
          : Value(fulfilledAt),
      isRefunded: Value(isRefunded),
      refundedAt: refundedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(refundedAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<int>(json['id']),
      code: serializer.fromJson<String>(json['code']),
      employeeId: serializer.fromJson<String>(json['employeeId']),
      customerId: serializer.fromJson<String>(json['customerId']),
      shippingFee: serializer.fromJson<double>(json['shippingFee']),
      discountAmount: serializer.fromJson<double>(json['discountAmount']),
      totalQuantity: serializer.fromJson<double>(json['totalQuantity']),
      subTotalAmount: serializer.fromJson<double>(json['subTotalAmount']),
      totalAmount: serializer.fromJson<double>(json['totalAmount']),
      note: serializer.fromJson<String?>(json['note']),
      status: serializer.fromJson<String>(json['status']),
      isPaid: serializer.fromJson<bool>(json['isPaid']),
      paidAt: serializer.fromJson<DateTime>(json['paidAt']),
      isFulfilled: serializer.fromJson<bool>(json['isFulfilled']),
      fulfilledAt: serializer.fromJson<DateTime?>(json['fulfilledAt']),
      isRefunded: serializer.fromJson<bool>(json['isRefunded']),
      refundedAt: serializer.fromJson<DateTime?>(json['refundedAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'code': serializer.toJson<String>(code),
      'employeeId': serializer.toJson<String>(employeeId),
      'customerId': serializer.toJson<String>(customerId),
      'shippingFee': serializer.toJson<double>(shippingFee),
      'discountAmount': serializer.toJson<double>(discountAmount),
      'totalQuantity': serializer.toJson<double>(totalQuantity),
      'subTotalAmount': serializer.toJson<double>(subTotalAmount),
      'totalAmount': serializer.toJson<double>(totalAmount),
      'note': serializer.toJson<String?>(note),
      'status': serializer.toJson<String>(status),
      'isPaid': serializer.toJson<bool>(isPaid),
      'paidAt': serializer.toJson<DateTime>(paidAt),
      'isFulfilled': serializer.toJson<bool>(isFulfilled),
      'fulfilledAt': serializer.toJson<DateTime?>(fulfilledAt),
      'isRefunded': serializer.toJson<bool>(isRefunded),
      'refundedAt': serializer.toJson<DateTime?>(refundedAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  Order copyWith(
          {int? id,
          String? code,
          String? employeeId,
          String? customerId,
          double? shippingFee,
          double? discountAmount,
          double? totalQuantity,
          double? subTotalAmount,
          double? totalAmount,
          String? note,
          String? status,
          bool? isPaid,
          DateTime? paidAt,
          bool? isFulfilled,
          DateTime? fulfilledAt,
          bool? isRefunded,
          DateTime? refundedAt,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? deletedAt}) =>
      Order(
        id: id ?? this.id,
        code: code ?? this.code,
        employeeId: employeeId ?? this.employeeId,
        customerId: customerId ?? this.customerId,
        shippingFee: shippingFee ?? this.shippingFee,
        discountAmount: discountAmount ?? this.discountAmount,
        totalQuantity: totalQuantity ?? this.totalQuantity,
        subTotalAmount: subTotalAmount ?? this.subTotalAmount,
        totalAmount: totalAmount ?? this.totalAmount,
        note: note ?? this.note,
        status: status ?? this.status,
        isPaid: isPaid ?? this.isPaid,
        paidAt: paidAt ?? this.paidAt,
        isFulfilled: isFulfilled ?? this.isFulfilled,
        fulfilledAt: fulfilledAt ?? this.fulfilledAt,
        isRefunded: isRefunded ?? this.isRefunded,
        refundedAt: refundedAt ?? this.refundedAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('employeeId: $employeeId, ')
          ..write('customerId: $customerId, ')
          ..write('shippingFee: $shippingFee, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('totalQuantity: $totalQuantity, ')
          ..write('subTotalAmount: $subTotalAmount, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('note: $note, ')
          ..write('status: $status, ')
          ..write('isPaid: $isPaid, ')
          ..write('paidAt: $paidAt, ')
          ..write('isFulfilled: $isFulfilled, ')
          ..write('fulfilledAt: $fulfilledAt, ')
          ..write('isRefunded: $isRefunded, ')
          ..write('refundedAt: $refundedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          code.hashCode,
          $mrjc(
              employeeId.hashCode,
              $mrjc(
                  customerId.hashCode,
                  $mrjc(
                      shippingFee.hashCode,
                      $mrjc(
                          discountAmount.hashCode,
                          $mrjc(
                              totalQuantity.hashCode,
                              $mrjc(
                                  subTotalAmount.hashCode,
                                  $mrjc(
                                      totalAmount.hashCode,
                                      $mrjc(
                                          note.hashCode,
                                          $mrjc(
                                              status.hashCode,
                                              $mrjc(
                                                  isPaid.hashCode,
                                                  $mrjc(
                                                      paidAt.hashCode,
                                                      $mrjc(
                                                          isFulfilled.hashCode,
                                                          $mrjc(
                                                              fulfilledAt
                                                                  .hashCode,
                                                              $mrjc(
                                                                  isRefunded
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      refundedAt
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          createdAt
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              updatedAt.hashCode,
                                                                              deletedAt.hashCode))))))))))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.code == this.code &&
          other.employeeId == this.employeeId &&
          other.customerId == this.customerId &&
          other.shippingFee == this.shippingFee &&
          other.discountAmount == this.discountAmount &&
          other.totalQuantity == this.totalQuantity &&
          other.subTotalAmount == this.subTotalAmount &&
          other.totalAmount == this.totalAmount &&
          other.note == this.note &&
          other.status == this.status &&
          other.isPaid == this.isPaid &&
          other.paidAt == this.paidAt &&
          other.isFulfilled == this.isFulfilled &&
          other.fulfilledAt == this.fulfilledAt &&
          other.isRefunded == this.isRefunded &&
          other.refundedAt == this.refundedAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<int> id;
  final Value<String> code;
  final Value<String> employeeId;
  final Value<String> customerId;
  final Value<double> shippingFee;
  final Value<double> discountAmount;
  final Value<double> totalQuantity;
  final Value<double> subTotalAmount;
  final Value<double> totalAmount;
  final Value<String?> note;
  final Value<String> status;
  final Value<bool> isPaid;
  final Value<DateTime> paidAt;
  final Value<bool> isFulfilled;
  final Value<DateTime?> fulfilledAt;
  final Value<bool> isRefunded;
  final Value<DateTime?> refundedAt;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime?> deletedAt;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.employeeId = const Value.absent(),
    this.customerId = const Value.absent(),
    this.shippingFee = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.totalQuantity = const Value.absent(),
    this.subTotalAmount = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.note = const Value.absent(),
    this.status = const Value.absent(),
    this.isPaid = const Value.absent(),
    this.paidAt = const Value.absent(),
    this.isFulfilled = const Value.absent(),
    this.fulfilledAt = const Value.absent(),
    this.isRefunded = const Value.absent(),
    this.refundedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  OrdersCompanion.insert({
    this.id = const Value.absent(),
    required String code,
    required String employeeId,
    required String customerId,
    this.shippingFee = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.totalQuantity = const Value.absent(),
    this.subTotalAmount = const Value.absent(),
    this.totalAmount = const Value.absent(),
    this.note = const Value.absent(),
    required String status,
    this.isPaid = const Value.absent(),
    required DateTime paidAt,
    this.isFulfilled = const Value.absent(),
    this.fulfilledAt = const Value.absent(),
    this.isRefunded = const Value.absent(),
    this.refundedAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  })  : code = Value(code),
        employeeId = Value(employeeId),
        customerId = Value(customerId),
        status = Value(status),
        paidAt = Value(paidAt);
  static Insertable<Order> custom({
    Expression<int>? id,
    Expression<String>? code,
    Expression<String>? employeeId,
    Expression<String>? customerId,
    Expression<double>? shippingFee,
    Expression<double>? discountAmount,
    Expression<double>? totalQuantity,
    Expression<double>? subTotalAmount,
    Expression<double>? totalAmount,
    Expression<String?>? note,
    Expression<String>? status,
    Expression<bool>? isPaid,
    Expression<DateTime>? paidAt,
    Expression<bool>? isFulfilled,
    Expression<DateTime?>? fulfilledAt,
    Expression<bool>? isRefunded,
    Expression<DateTime?>? refundedAt,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime?>? deletedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (employeeId != null) 'employee_id': employeeId,
      if (customerId != null) 'customer_id': customerId,
      if (shippingFee != null) 'shipping_fee': shippingFee,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (totalQuantity != null) 'total_quantity': totalQuantity,
      if (subTotalAmount != null) 'sub_total_amount': subTotalAmount,
      if (totalAmount != null) 'total_amount': totalAmount,
      if (note != null) 'note': note,
      if (status != null) 'status': status,
      if (isPaid != null) 'is_paid': isPaid,
      if (paidAt != null) 'paid_at': paidAt,
      if (isFulfilled != null) 'is_fulfilled': isFulfilled,
      if (fulfilledAt != null) 'fulfilled_at': fulfilledAt,
      if (isRefunded != null) 'is_refunded': isRefunded,
      if (refundedAt != null) 'refunded_at': refundedAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
    });
  }

  OrdersCompanion copyWith(
      {Value<int>? id,
      Value<String>? code,
      Value<String>? employeeId,
      Value<String>? customerId,
      Value<double>? shippingFee,
      Value<double>? discountAmount,
      Value<double>? totalQuantity,
      Value<double>? subTotalAmount,
      Value<double>? totalAmount,
      Value<String?>? note,
      Value<String>? status,
      Value<bool>? isPaid,
      Value<DateTime>? paidAt,
      Value<bool>? isFulfilled,
      Value<DateTime?>? fulfilledAt,
      Value<bool>? isRefunded,
      Value<DateTime?>? refundedAt,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<DateTime?>? deletedAt}) {
    return OrdersCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      employeeId: employeeId ?? this.employeeId,
      customerId: customerId ?? this.customerId,
      shippingFee: shippingFee ?? this.shippingFee,
      discountAmount: discountAmount ?? this.discountAmount,
      totalQuantity: totalQuantity ?? this.totalQuantity,
      subTotalAmount: subTotalAmount ?? this.subTotalAmount,
      totalAmount: totalAmount ?? this.totalAmount,
      note: note ?? this.note,
      status: status ?? this.status,
      isPaid: isPaid ?? this.isPaid,
      paidAt: paidAt ?? this.paidAt,
      isFulfilled: isFulfilled ?? this.isFulfilled,
      fulfilledAt: fulfilledAt ?? this.fulfilledAt,
      isRefunded: isRefunded ?? this.isRefunded,
      refundedAt: refundedAt ?? this.refundedAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (employeeId.present) {
      map['employee_id'] = Variable<String>(employeeId.value);
    }
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (shippingFee.present) {
      map['shipping_fee'] = Variable<double>(shippingFee.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (totalQuantity.present) {
      map['total_quantity'] = Variable<double>(totalQuantity.value);
    }
    if (subTotalAmount.present) {
      map['sub_total_amount'] = Variable<double>(subTotalAmount.value);
    }
    if (totalAmount.present) {
      map['total_amount'] = Variable<double>(totalAmount.value);
    }
    if (note.present) {
      map['note'] = Variable<String?>(note.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (isPaid.present) {
      map['is_paid'] = Variable<bool>(isPaid.value);
    }
    if (paidAt.present) {
      map['paid_at'] = Variable<DateTime>(paidAt.value);
    }
    if (isFulfilled.present) {
      map['is_fulfilled'] = Variable<bool>(isFulfilled.value);
    }
    if (fulfilledAt.present) {
      map['fulfilled_at'] = Variable<DateTime?>(fulfilledAt.value);
    }
    if (isRefunded.present) {
      map['is_refunded'] = Variable<bool>(isRefunded.value);
    }
    if (refundedAt.present) {
      map['refunded_at'] = Variable<DateTime?>(refundedAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime?>(deletedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('employeeId: $employeeId, ')
          ..write('customerId: $customerId, ')
          ..write('shippingFee: $shippingFee, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('totalQuantity: $totalQuantity, ')
          ..write('subTotalAmount: $subTotalAmount, ')
          ..write('totalAmount: $totalAmount, ')
          ..write('note: $note, ')
          ..write('status: $status, ')
          ..write('isPaid: $isPaid, ')
          ..write('paidAt: $paidAt, ')
          ..write('isFulfilled: $isFulfilled, ')
          ..write('fulfilledAt: $fulfilledAt, ')
          ..write('isRefunded: $isRefunded, ')
          ..write('refundedAt: $refundedAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, Order> {
  final GeneratedDatabase _db;
  final String? _alias;
  $OrdersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedTextColumn code = _constructCode();
  GeneratedTextColumn _constructCode() {
    return GeneratedTextColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _employeeIdMeta = const VerificationMeta('employeeId');
  @override
  late final GeneratedTextColumn employeeId = _constructEmployeeId();
  GeneratedTextColumn _constructEmployeeId() {
    return GeneratedTextColumn('employee_id', $tableName, false,
        $customConstraints: 'NULL REFERENCES employees(id)');
  }

  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedTextColumn customerId = _constructCustomerId();
  GeneratedTextColumn _constructCustomerId() {
    return GeneratedTextColumn('customer_id', $tableName, false,
        $customConstraints: 'NULL REFERENCES customers(id)');
  }

  final VerificationMeta _shippingFeeMeta =
      const VerificationMeta('shippingFee');
  @override
  late final GeneratedRealColumn shippingFee = _constructShippingFee();
  GeneratedRealColumn _constructShippingFee() {
    return GeneratedRealColumn('shipping_fee', $tableName, false,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedRealColumn discountAmount = _constructDiscountAmount();
  GeneratedRealColumn _constructDiscountAmount() {
    return GeneratedRealColumn('discount_amount', $tableName, false,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _totalQuantityMeta =
      const VerificationMeta('totalQuantity');
  @override
  late final GeneratedRealColumn totalQuantity = _constructTotalQuantity();
  GeneratedRealColumn _constructTotalQuantity() {
    return GeneratedRealColumn('total_quantity', $tableName, false,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _subTotalAmountMeta =
      const VerificationMeta('subTotalAmount');
  @override
  late final GeneratedRealColumn subTotalAmount = _constructSubTotalAmount();
  GeneratedRealColumn _constructSubTotalAmount() {
    return GeneratedRealColumn('sub_total_amount', $tableName, false,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _totalAmountMeta =
      const VerificationMeta('totalAmount');
  @override
  late final GeneratedRealColumn totalAmount = _constructTotalAmount();
  GeneratedRealColumn _constructTotalAmount() {
    return GeneratedRealColumn('total_amount', $tableName, false,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedTextColumn note = _constructNote();
  GeneratedTextColumn _constructNote() {
    return GeneratedTextColumn(
      'note',
      $tableName,
      true,
    );
  }

  final VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedTextColumn status = _constructStatus();
  GeneratedTextColumn _constructStatus() {
    return GeneratedTextColumn(
      'status',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isPaidMeta = const VerificationMeta('isPaid');
  @override
  late final GeneratedBoolColumn isPaid = _constructIsPaid();
  GeneratedBoolColumn _constructIsPaid() {
    return GeneratedBoolColumn('is_paid', $tableName, false,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _paidAtMeta = const VerificationMeta('paidAt');
  @override
  late final GeneratedDateTimeColumn paidAt = _constructPaidAt();
  GeneratedDateTimeColumn _constructPaidAt() {
    return GeneratedDateTimeColumn(
      'paid_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isFulfilledMeta =
      const VerificationMeta('isFulfilled');
  @override
  late final GeneratedBoolColumn isFulfilled = _constructIsFulfilled();
  GeneratedBoolColumn _constructIsFulfilled() {
    return GeneratedBoolColumn('is_fulfilled', $tableName, false,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _fulfilledAtMeta =
      const VerificationMeta('fulfilledAt');
  @override
  late final GeneratedDateTimeColumn fulfilledAt = _constructFulfilledAt();
  GeneratedDateTimeColumn _constructFulfilledAt() {
    return GeneratedDateTimeColumn(
      'fulfilled_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _isRefundedMeta = const VerificationMeta('isRefunded');
  @override
  late final GeneratedBoolColumn isRefunded = _constructIsRefunded();
  GeneratedBoolColumn _constructIsRefunded() {
    return GeneratedBoolColumn('is_refunded', $tableName, false,
        defaultValue: const Constant(false));
  }

  final VerificationMeta _refundedAtMeta = const VerificationMeta('refundedAt');
  @override
  late final GeneratedDateTimeColumn refundedAt = _constructRefundedAt();
  GeneratedDateTimeColumn _constructRefundedAt() {
    return GeneratedDateTimeColumn(
      'refunded_at',
      $tableName,
      true,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedDateTimeColumn createdAt = _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn('created_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedDateTimeColumn updatedAt = _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn('updated_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  @override
  late final GeneratedDateTimeColumn deletedAt = _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        code,
        employeeId,
        customerId,
        shippingFee,
        discountAmount,
        totalQuantity,
        subTotalAmount,
        totalAmount,
        note,
        status,
        isPaid,
        paidAt,
        isFulfilled,
        fulfilledAt,
        isRefunded,
        refundedAt,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $OrdersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'orders';
  @override
  final String actualTableName = 'orders';
  @override
  VerificationContext validateIntegrity(Insertable<Order> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('employee_id')) {
      context.handle(
          _employeeIdMeta,
          employeeId.isAcceptableOrUnknown(
              data['employee_id']!, _employeeIdMeta));
    } else if (isInserting) {
      context.missing(_employeeIdMeta);
    }
    if (data.containsKey('customer_id')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customer_id']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('shipping_fee')) {
      context.handle(
          _shippingFeeMeta,
          shippingFee.isAcceptableOrUnknown(
              data['shipping_fee']!, _shippingFeeMeta));
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('total_quantity')) {
      context.handle(
          _totalQuantityMeta,
          totalQuantity.isAcceptableOrUnknown(
              data['total_quantity']!, _totalQuantityMeta));
    }
    if (data.containsKey('sub_total_amount')) {
      context.handle(
          _subTotalAmountMeta,
          subTotalAmount.isAcceptableOrUnknown(
              data['sub_total_amount']!, _subTotalAmountMeta));
    }
    if (data.containsKey('total_amount')) {
      context.handle(
          _totalAmountMeta,
          totalAmount.isAcceptableOrUnknown(
              data['total_amount']!, _totalAmountMeta));
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    } else if (isInserting) {
      context.missing(_statusMeta);
    }
    if (data.containsKey('is_paid')) {
      context.handle(_isPaidMeta,
          isPaid.isAcceptableOrUnknown(data['is_paid']!, _isPaidMeta));
    }
    if (data.containsKey('paid_at')) {
      context.handle(_paidAtMeta,
          paidAt.isAcceptableOrUnknown(data['paid_at']!, _paidAtMeta));
    } else if (isInserting) {
      context.missing(_paidAtMeta);
    }
    if (data.containsKey('is_fulfilled')) {
      context.handle(
          _isFulfilledMeta,
          isFulfilled.isAcceptableOrUnknown(
              data['is_fulfilled']!, _isFulfilledMeta));
    }
    if (data.containsKey('fulfilled_at')) {
      context.handle(
          _fulfilledAtMeta,
          fulfilledAt.isAcceptableOrUnknown(
              data['fulfilled_at']!, _fulfilledAtMeta));
    }
    if (data.containsKey('is_refunded')) {
      context.handle(
          _isRefundedMeta,
          isRefunded.isAcceptableOrUnknown(
              data['is_refunded']!, _isRefundedMeta));
    }
    if (data.containsKey('refunded_at')) {
      context.handle(
          _refundedAtMeta,
          refundedAt.isAcceptableOrUnknown(
              data['refunded_at']!, _refundedAtMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Order.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(_db, alias);
  }
}

class OrderItem extends DataClass implements Insertable<OrderItem> {
  final int id;
  final String orderId;
  final String productId;
  final double price;
  final double quantity;
  final double discountAmount;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  OrderItem(
      {required this.id,
      required this.orderId,
      required this.productId,
      required this.price,
      required this.quantity,
      required this.discountAmount,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt});
  factory OrderItem.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OrderItem(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      orderId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}order_id'])!,
      productId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}product_id'])!,
      price: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}price'])!,
      quantity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}quantity'])!,
      discountAmount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}discount_amount'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      deletedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['order_id'] = Variable<String>(orderId);
    map['product_id'] = Variable<String>(productId);
    map['price'] = Variable<double>(price);
    map['quantity'] = Variable<double>(quantity);
    map['discount_amount'] = Variable<double>(discountAmount);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['deleted_at'] = Variable<DateTime>(deletedAt);
    return map;
  }

  OrderItemsCompanion toCompanion(bool nullToAbsent) {
    return OrderItemsCompanion(
      id: Value(id),
      orderId: Value(orderId),
      productId: Value(productId),
      price: Value(price),
      quantity: Value(quantity),
      discountAmount: Value(discountAmount),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: Value(deletedAt),
    );
  }

  factory OrderItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return OrderItem(
      id: serializer.fromJson<int>(json['id']),
      orderId: serializer.fromJson<String>(json['orderId']),
      productId: serializer.fromJson<String>(json['productId']),
      price: serializer.fromJson<double>(json['price']),
      quantity: serializer.fromJson<double>(json['quantity']),
      discountAmount: serializer.fromJson<double>(json['discountAmount']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'orderId': serializer.toJson<String>(orderId),
      'productId': serializer.toJson<String>(productId),
      'price': serializer.toJson<double>(price),
      'quantity': serializer.toJson<double>(quantity),
      'discountAmount': serializer.toJson<double>(discountAmount),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  OrderItem copyWith(
          {int? id,
          String? orderId,
          String? productId,
          double? price,
          double? quantity,
          double? discountAmount,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? deletedAt}) =>
      OrderItem(
        id: id ?? this.id,
        orderId: orderId ?? this.orderId,
        productId: productId ?? this.productId,
        price: price ?? this.price,
        quantity: quantity ?? this.quantity,
        discountAmount: discountAmount ?? this.discountAmount,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('OrderItem(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('productId: $productId, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          orderId.hashCode,
          $mrjc(
              productId.hashCode,
              $mrjc(
                  price.hashCode,
                  $mrjc(
                      quantity.hashCode,
                      $mrjc(
                          discountAmount.hashCode,
                          $mrjc(
                              createdAt.hashCode,
                              $mrjc(updatedAt.hashCode,
                                  deletedAt.hashCode)))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderItem &&
          other.id == this.id &&
          other.orderId == this.orderId &&
          other.productId == this.productId &&
          other.price == this.price &&
          other.quantity == this.quantity &&
          other.discountAmount == this.discountAmount &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class OrderItemsCompanion extends UpdateCompanion<OrderItem> {
  final Value<int> id;
  final Value<String> orderId;
  final Value<String> productId;
  final Value<double> price;
  final Value<double> quantity;
  final Value<double> discountAmount;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const OrderItemsCompanion({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.productId = const Value.absent(),
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  OrderItemsCompanion.insert({
    this.id = const Value.absent(),
    required String orderId,
    required String productId,
    this.price = const Value.absent(),
    this.quantity = const Value.absent(),
    this.discountAmount = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required DateTime deletedAt,
  })  : orderId = Value(orderId),
        productId = Value(productId),
        deletedAt = Value(deletedAt);
  static Insertable<OrderItem> custom({
    Expression<int>? id,
    Expression<String>? orderId,
    Expression<String>? productId,
    Expression<double>? price,
    Expression<double>? quantity,
    Expression<double>? discountAmount,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderId != null) 'order_id': orderId,
      if (productId != null) 'product_id': productId,
      if (price != null) 'price': price,
      if (quantity != null) 'quantity': quantity,
      if (discountAmount != null) 'discount_amount': discountAmount,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
    });
  }

  OrderItemsCompanion copyWith(
      {Value<int>? id,
      Value<String>? orderId,
      Value<String>? productId,
      Value<double>? price,
      Value<double>? quantity,
      Value<double>? discountAmount,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<DateTime>? deletedAt}) {
    return OrderItemsCompanion(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      productId: productId ?? this.productId,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      discountAmount: discountAmount ?? this.discountAmount,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<String>(orderId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    if (discountAmount.present) {
      map['discount_amount'] = Variable<double>(discountAmount.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderItemsCompanion(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('productId: $productId, ')
          ..write('price: $price, ')
          ..write('quantity: $quantity, ')
          ..write('discountAmount: $discountAmount, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }
}

class $OrderItemsTable extends OrderItems
    with TableInfo<$OrderItemsTable, OrderItem> {
  final GeneratedDatabase _db;
  final String? _alias;
  $OrderItemsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _orderIdMeta = const VerificationMeta('orderId');
  @override
  late final GeneratedTextColumn orderId = _constructOrderId();
  GeneratedTextColumn _constructOrderId() {
    return GeneratedTextColumn('order_id', $tableName, false,
        $customConstraints: 'NULL REFERENCES orders(id)');
  }

  final VerificationMeta _productIdMeta = const VerificationMeta('productId');
  @override
  late final GeneratedTextColumn productId = _constructProductId();
  GeneratedTextColumn _constructProductId() {
    return GeneratedTextColumn('product_id', $tableName, false,
        $customConstraints: 'NULL REFERENCES products(id)');
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedRealColumn price = _constructPrice();
  GeneratedRealColumn _constructPrice() {
    return GeneratedRealColumn('price', $tableName, false,
        defaultValue: const Constant(1));
  }

  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedRealColumn quantity = _constructQuantity();
  GeneratedRealColumn _constructQuantity() {
    return GeneratedRealColumn('quantity', $tableName, false,
        defaultValue: const Constant(1));
  }

  final VerificationMeta _discountAmountMeta =
      const VerificationMeta('discountAmount');
  @override
  late final GeneratedRealColumn discountAmount = _constructDiscountAmount();
  GeneratedRealColumn _constructDiscountAmount() {
    return GeneratedRealColumn('discount_amount', $tableName, false,
        defaultValue: const Constant(0));
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedDateTimeColumn createdAt = _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn('created_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedDateTimeColumn updatedAt = _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn('updated_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  @override
  late final GeneratedDateTimeColumn deletedAt = _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        orderId,
        productId,
        price,
        quantity,
        discountAmount,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $OrderItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'order_items';
  @override
  final String actualTableName = 'order_items';
  @override
  VerificationContext validateIntegrity(Insertable<OrderItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    if (data.containsKey('discount_amount')) {
      context.handle(
          _discountAmountMeta,
          discountAmount.isAcceptableOrUnknown(
              data['discount_amount']!, _discountAmountMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta));
    } else if (isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    return OrderItem.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OrderItemsTable createAlias(String alias) {
    return $OrderItemsTable(_db, alias);
  }
}

class Voucher extends DataClass implements Insertable<Voucher> {
  final int id;
  final String name;
  final String code;
  final String description;
  final String type;
  final int limit;
  final int amount;
  final DateTime startAt;
  final DateTime endAt;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  Voucher(
      {required this.id,
      required this.name,
      required this.code,
      required this.description,
      required this.type,
      required this.limit,
      required this.amount,
      required this.startAt,
      required this.endAt,
      required this.createdAt,
      required this.updatedAt,
      required this.deletedAt});
  factory Voucher.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Voucher(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      code: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}code'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      limit: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}limit'])!,
      amount: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}amount'])!,
      startAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}start_at'])!,
      endAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}end_at'])!,
      createdAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      deletedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deleted_at'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['code'] = Variable<String>(code);
    map['description'] = Variable<String>(description);
    map['type'] = Variable<String>(type);
    map['limit'] = Variable<int>(limit);
    map['amount'] = Variable<int>(amount);
    map['start_at'] = Variable<DateTime>(startAt);
    map['end_at'] = Variable<DateTime>(endAt);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['deleted_at'] = Variable<DateTime>(deletedAt);
    return map;
  }

  VouchersCompanion toCompanion(bool nullToAbsent) {
    return VouchersCompanion(
      id: Value(id),
      name: Value(name),
      code: Value(code),
      description: Value(description),
      type: Value(type),
      limit: Value(limit),
      amount: Value(amount),
      startAt: Value(startAt),
      endAt: Value(endAt),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      deletedAt: Value(deletedAt),
    );
  }

  factory Voucher.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Voucher(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      code: serializer.fromJson<String>(json['code']),
      description: serializer.fromJson<String>(json['description']),
      type: serializer.fromJson<String>(json['type']),
      limit: serializer.fromJson<int>(json['limit']),
      amount: serializer.fromJson<int>(json['amount']),
      startAt: serializer.fromJson<DateTime>(json['startAt']),
      endAt: serializer.fromJson<DateTime>(json['endAt']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'code': serializer.toJson<String>(code),
      'description': serializer.toJson<String>(description),
      'type': serializer.toJson<String>(type),
      'limit': serializer.toJson<int>(limit),
      'amount': serializer.toJson<int>(amount),
      'startAt': serializer.toJson<DateTime>(startAt),
      'endAt': serializer.toJson<DateTime>(endAt),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'deletedAt': serializer.toJson<DateTime>(deletedAt),
    };
  }

  Voucher copyWith(
          {int? id,
          String? name,
          String? code,
          String? description,
          String? type,
          int? limit,
          int? amount,
          DateTime? startAt,
          DateTime? endAt,
          DateTime? createdAt,
          DateTime? updatedAt,
          DateTime? deletedAt}) =>
      Voucher(
        id: id ?? this.id,
        name: name ?? this.name,
        code: code ?? this.code,
        description: description ?? this.description,
        type: type ?? this.type,
        limit: limit ?? this.limit,
        amount: amount ?? this.amount,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        deletedAt: deletedAt ?? this.deletedAt,
      );
  @override
  String toString() {
    return (StringBuffer('Voucher(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('limit: $limit, ')
          ..write('amount: $amount, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              code.hashCode,
              $mrjc(
                  description.hashCode,
                  $mrjc(
                      type.hashCode,
                      $mrjc(
                          limit.hashCode,
                          $mrjc(
                              amount.hashCode,
                              $mrjc(
                                  startAt.hashCode,
                                  $mrjc(
                                      endAt.hashCode,
                                      $mrjc(
                                          createdAt.hashCode,
                                          $mrjc(updatedAt.hashCode,
                                              deletedAt.hashCode))))))))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Voucher &&
          other.id == this.id &&
          other.name == this.name &&
          other.code == this.code &&
          other.description == this.description &&
          other.type == this.type &&
          other.limit == this.limit &&
          other.amount == this.amount &&
          other.startAt == this.startAt &&
          other.endAt == this.endAt &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class VouchersCompanion extends UpdateCompanion<Voucher> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> code;
  final Value<String> description;
  final Value<String> type;
  final Value<int> limit;
  final Value<int> amount;
  final Value<DateTime> startAt;
  final Value<DateTime> endAt;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> deletedAt;
  const VouchersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.code = const Value.absent(),
    this.description = const Value.absent(),
    this.type = const Value.absent(),
    this.limit = const Value.absent(),
    this.amount = const Value.absent(),
    this.startAt = const Value.absent(),
    this.endAt = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
  });
  VouchersCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String code,
    required String description,
    required String type,
    required int limit,
    required int amount,
    required DateTime startAt,
    required DateTime endAt,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required DateTime deletedAt,
  })  : name = Value(name),
        code = Value(code),
        description = Value(description),
        type = Value(type),
        limit = Value(limit),
        amount = Value(amount),
        startAt = Value(startAt),
        endAt = Value(endAt),
        deletedAt = Value(deletedAt);
  static Insertable<Voucher> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? code,
    Expression<String>? description,
    Expression<String>? type,
    Expression<int>? limit,
    Expression<int>? amount,
    Expression<DateTime>? startAt,
    Expression<DateTime>? endAt,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (code != null) 'code': code,
      if (description != null) 'description': description,
      if (type != null) 'type': type,
      if (limit != null) 'limit': limit,
      if (amount != null) 'amount': amount,
      if (startAt != null) 'start_at': startAt,
      if (endAt != null) 'end_at': endAt,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
    });
  }

  VouchersCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? code,
      Value<String>? description,
      Value<String>? type,
      Value<int>? limit,
      Value<int>? amount,
      Value<DateTime>? startAt,
      Value<DateTime>? endAt,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<DateTime>? deletedAt}) {
    return VouchersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      code: code ?? this.code,
      description: description ?? this.description,
      type: type ?? this.type,
      limit: limit ?? this.limit,
      amount: amount ?? this.amount,
      startAt: startAt ?? this.startAt,
      endAt: endAt ?? this.endAt,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (code.present) {
      map['code'] = Variable<String>(code.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (limit.present) {
      map['limit'] = Variable<int>(limit.value);
    }
    if (amount.present) {
      map['amount'] = Variable<int>(amount.value);
    }
    if (startAt.present) {
      map['start_at'] = Variable<DateTime>(startAt.value);
    }
    if (endAt.present) {
      map['end_at'] = Variable<DateTime>(endAt.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VouchersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('code: $code, ')
          ..write('description: $description, ')
          ..write('type: $type, ')
          ..write('limit: $limit, ')
          ..write('amount: $amount, ')
          ..write('startAt: $startAt, ')
          ..write('endAt: $endAt, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }
}

class $VouchersTable extends Vouchers with TableInfo<$VouchersTable, Voucher> {
  final GeneratedDatabase _db;
  final String? _alias;
  $VouchersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedTextColumn code = _constructCode();
  GeneratedTextColumn _constructCode() {
    return GeneratedTextColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedTextColumn description = _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedTextColumn type = _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _limitMeta = const VerificationMeta('limit');
  @override
  late final GeneratedIntColumn limit = _constructLimit();
  GeneratedIntColumn _constructLimit() {
    return GeneratedIntColumn(
      'limit',
      $tableName,
      false,
    );
  }

  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedIntColumn amount = _constructAmount();
  GeneratedIntColumn _constructAmount() {
    return GeneratedIntColumn(
      'amount',
      $tableName,
      false,
    );
  }

  final VerificationMeta _startAtMeta = const VerificationMeta('startAt');
  @override
  late final GeneratedDateTimeColumn startAt = _constructStartAt();
  GeneratedDateTimeColumn _constructStartAt() {
    return GeneratedDateTimeColumn(
      'start_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _endAtMeta = const VerificationMeta('endAt');
  @override
  late final GeneratedDateTimeColumn endAt = _constructEndAt();
  GeneratedDateTimeColumn _constructEndAt() {
    return GeneratedDateTimeColumn(
      'end_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  @override
  late final GeneratedDateTimeColumn createdAt = _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn('created_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedDateTimeColumn updatedAt = _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn('updated_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _deletedAtMeta = const VerificationMeta('deletedAt');
  @override
  late final GeneratedDateTimeColumn deletedAt = _constructDeletedAt();
  GeneratedDateTimeColumn _constructDeletedAt() {
    return GeneratedDateTimeColumn(
      'deleted_at',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        code,
        description,
        type,
        limit,
        amount,
        startAt,
        endAt,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  $VouchersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'vouchers';
  @override
  final String actualTableName = 'vouchers';
  @override
  VerificationContext validateIntegrity(Insertable<Voucher> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('limit')) {
      context.handle(
          _limitMeta, limit.isAcceptableOrUnknown(data['limit']!, _limitMeta));
    } else if (isInserting) {
      context.missing(_limitMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    if (data.containsKey('start_at')) {
      context.handle(_startAtMeta,
          startAt.isAcceptableOrUnknown(data['start_at']!, _startAtMeta));
    } else if (isInserting) {
      context.missing(_startAtMeta);
    }
    if (data.containsKey('end_at')) {
      context.handle(
          _endAtMeta, endAt.isAcceptableOrUnknown(data['end_at']!, _endAtMeta));
    } else if (isInserting) {
      context.missing(_endAtMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta));
    } else if (isInserting) {
      context.missing(_deletedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Voucher map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Voucher.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $VouchersTable createAlias(String alias) {
    return $VouchersTable(_db, alias);
  }
}

class Setting extends DataClass implements Insertable<Setting> {
  final int id;
  final String name;
  final String type;
  final String value;
  final DateTime updatedAt;
  final String settingCategoryId;
  Setting(
      {required this.id,
      required this.name,
      required this.type,
      required this.value,
      required this.updatedAt,
      required this.settingCategoryId});
  factory Setting.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Setting(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      type: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      value: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}value'])!,
      updatedAt: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at'])!,
      settingCategoryId: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}setting_category_id'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['value'] = Variable<String>(value);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['setting_category_id'] = Variable<String>(settingCategoryId);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      value: Value(value),
      updatedAt: Value(updatedAt),
      settingCategoryId: Value(settingCategoryId),
    );
  }

  factory Setting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Setting(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      value: serializer.fromJson<String>(json['value']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      settingCategoryId: serializer.fromJson<String>(json['settingCategoryId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'value': serializer.toJson<String>(value),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'settingCategoryId': serializer.toJson<String>(settingCategoryId),
    };
  }

  Setting copyWith(
          {int? id,
          String? name,
          String? type,
          String? value,
          DateTime? updatedAt,
          String? settingCategoryId}) =>
      Setting(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        value: value ?? this.value,
        updatedAt: updatedAt ?? this.updatedAt,
        settingCategoryId: settingCategoryId ?? this.settingCategoryId,
      );
  @override
  String toString() {
    return (StringBuffer('Setting(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('value: $value, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('settingCategoryId: $settingCategoryId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          name.hashCode,
          $mrjc(
              type.hashCode,
              $mrjc(value.hashCode,
                  $mrjc(updatedAt.hashCode, settingCategoryId.hashCode))))));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Setting &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.value == this.value &&
          other.updatedAt == this.updatedAt &&
          other.settingCategoryId == this.settingCategoryId);
}

class SettingsCompanion extends UpdateCompanion<Setting> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> type;
  final Value<String> value;
  final Value<DateTime> updatedAt;
  final Value<String> settingCategoryId;
  const SettingsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.value = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.settingCategoryId = const Value.absent(),
  });
  SettingsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String type,
    required String value,
    this.updatedAt = const Value.absent(),
    required String settingCategoryId,
  })  : name = Value(name),
        type = Value(type),
        value = Value(value),
        settingCategoryId = Value(settingCategoryId);
  static Insertable<Setting> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? value,
    Expression<DateTime>? updatedAt,
    Expression<String>? settingCategoryId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (value != null) 'value': value,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (settingCategoryId != null) 'setting_category_id': settingCategoryId,
    });
  }

  SettingsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? type,
      Value<String>? value,
      Value<DateTime>? updatedAt,
      Value<String>? settingCategoryId}) {
    return SettingsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      value: value ?? this.value,
      updatedAt: updatedAt ?? this.updatedAt,
      settingCategoryId: settingCategoryId ?? this.settingCategoryId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (settingCategoryId.present) {
      map['setting_category_id'] = Variable<String>(settingCategoryId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('value: $value, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('settingCategoryId: $settingCategoryId')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings with TableInfo<$SettingsTable, Setting> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SettingsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedIntColumn id = _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedTextColumn name = _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 50);
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedTextColumn type = _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedTextColumn value = _constructValue();
  GeneratedTextColumn _constructValue() {
    return GeneratedTextColumn(
      'value',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  @override
  late final GeneratedDateTimeColumn updatedAt = _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn('updated_at', $tableName, false,
        defaultValue: currentDateAndTime);
  }

  final VerificationMeta _settingCategoryIdMeta =
      const VerificationMeta('settingCategoryId');
  @override
  late final GeneratedTextColumn settingCategoryId =
      _constructSettingCategoryId();
  GeneratedTextColumn _constructSettingCategoryId() {
    return GeneratedTextColumn('setting_category_id', $tableName, false,
        $customConstraints: 'NULL REFERENCES settingCategories(id)');
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, name, type, value, updatedAt, settingCategoryId];
  @override
  $SettingsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'settings';
  @override
  final String actualTableName = 'settings';
  @override
  VerificationContext validateIntegrity(Insertable<Setting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('setting_category_id')) {
      context.handle(
          _settingCategoryIdMeta,
          settingCategoryId.isAcceptableOrUnknown(
              data['setting_category_id']!, _settingCategoryIdMeta));
    } else if (isInserting) {
      context.missing(_settingCategoryIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Setting map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Setting.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $ProductsTable products = $ProductsTable(this);
  late final $CustomersTable customers = $CustomersTable(this);
  late final $OrdersTable orders = $OrdersTable(this);
  late final $OrderItemsTable orderItems = $OrderItemsTable(this);
  late final $VouchersTable vouchers = $VouchersTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  late final ProductsDao productsDao = ProductsDao(this as AppDatabase);
  late final CustomersDao customersDao = CustomersDao(this as AppDatabase);
  late final EmployeesDao employeesDao = EmployeesDao(this as AppDatabase);
  late final OrdersDao ordersDao = OrdersDao(this as AppDatabase);
  late final OrderItemsDao orderItemsDao = OrderItemsDao(this as AppDatabase);
  late final VouchersDao vouchersDao = VouchersDao(this as AppDatabase);
  late final SettingsDao settingsDao = SettingsDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [products, customers, orders, orderItems, vouchers, settings];
}
