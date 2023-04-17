// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bestsellersproduct_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BestsellersproductRecord> _$bestsellersproductRecordSerializer =
    new _$BestsellersproductRecordSerializer();

class _$BestsellersproductRecordSerializer
    implements StructuredSerializer<BestsellersproductRecord> {
  @override
  final Iterable<Type> types = const [
    BestsellersproductRecord,
    _$BestsellersproductRecord
  ];
  @override
  final String wireName = 'BestsellersproductRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, BestsellersproductRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.info;
    if (value != null) {
      result
        ..add('info')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BestsellersproductRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BestsellersproductRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'info':
          result.info = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BestsellersproductRecord extends BestsellersproductRecord {
  @override
  final String? name;
  @override
  final String? info;
  @override
  final double? price;
  @override
  final DocumentReference<Object?>? brand;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BestsellersproductRecord(
          [void Function(BestsellersproductRecordBuilder)? updates]) =>
      (new BestsellersproductRecordBuilder()..update(updates))._build();

  _$BestsellersproductRecord._(
      {this.name, this.info, this.price, this.brand, this.image, this.ffRef})
      : super._();

  @override
  BestsellersproductRecord rebuild(
          void Function(BestsellersproductRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BestsellersproductRecordBuilder toBuilder() =>
      new BestsellersproductRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BestsellersproductRecord &&
        name == other.name &&
        info == other.info &&
        price == other.price &&
        brand == other.brand &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BestsellersproductRecord')
          ..add('name', name)
          ..add('info', info)
          ..add('price', price)
          ..add('brand', brand)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BestsellersproductRecordBuilder
    implements
        Builder<BestsellersproductRecord, BestsellersproductRecordBuilder> {
  _$BestsellersproductRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DocumentReference<Object?>? _brand;
  DocumentReference<Object?>? get brand => _$this._brand;
  set brand(DocumentReference<Object?>? brand) => _$this._brand = brand;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BestsellersproductRecordBuilder() {
    BestsellersproductRecord._initializeBuilder(this);
  }

  BestsellersproductRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _info = $v.info;
      _price = $v.price;
      _brand = $v.brand;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BestsellersproductRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BestsellersproductRecord;
  }

  @override
  void update(void Function(BestsellersproductRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BestsellersproductRecord build() => _build();

  _$BestsellersproductRecord _build() {
    final _$result = _$v ??
        new _$BestsellersproductRecord._(
            name: name,
            info: info,
            price: price,
            brand: brand,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
