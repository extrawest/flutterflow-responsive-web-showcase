// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductRecord> _$productRecordSerializer =
    new _$ProductRecordSerializer();

class _$ProductRecordSerializer implements StructuredSerializer<ProductRecord> {
  @override
  final Iterable<Type> types = const [ProductRecord, _$ProductRecord];
  @override
  final String wireName = 'ProductRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductRecord object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.brand;
    if (value != null) {
      result
        ..add('brand')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.brandName;
    if (value != null) {
      result
        ..add('brand_name')
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
  ProductRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductRecordBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'brand':
          result.brand = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'brand_name':
          result.brandName = serializers.deserialize(value,
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

class _$ProductRecord extends ProductRecord {
  @override
  final String? name;
  @override
  final String? info;
  @override
  final double? price;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? brand;
  @override
  final String? brandName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductRecord([void Function(ProductRecordBuilder)? updates]) =>
      (new ProductRecordBuilder()..update(updates))._build();

  _$ProductRecord._(
      {this.name,
      this.info,
      this.price,
      this.image,
      this.brand,
      this.brandName,
      this.ffRef})
      : super._();

  @override
  ProductRecord rebuild(void Function(ProductRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductRecordBuilder toBuilder() => new ProductRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductRecord &&
        name == other.name &&
        info == other.info &&
        price == other.price &&
        image == other.image &&
        brand == other.brand &&
        brandName == other.brandName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, info.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, image.hashCode);
    _$hash = $jc(_$hash, brand.hashCode);
    _$hash = $jc(_$hash, brandName.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductRecord')
          ..add('name', name)
          ..add('info', info)
          ..add('price', price)
          ..add('image', image)
          ..add('brand', brand)
          ..add('brandName', brandName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductRecordBuilder
    implements Builder<ProductRecord, ProductRecordBuilder> {
  _$ProductRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _info;
  String? get info => _$this._info;
  set info(String? info) => _$this._info = info;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _brand;
  DocumentReference<Object?>? get brand => _$this._brand;
  set brand(DocumentReference<Object?>? brand) => _$this._brand = brand;

  String? _brandName;
  String? get brandName => _$this._brandName;
  set brandName(String? brandName) => _$this._brandName = brandName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductRecordBuilder() {
    ProductRecord._initializeBuilder(this);
  }

  ProductRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _info = $v.info;
      _price = $v.price;
      _image = $v.image;
      _brand = $v.brand;
      _brandName = $v.brandName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductRecord;
  }

  @override
  void update(void Function(ProductRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductRecord build() => _build();

  _$ProductRecord _build() {
    final _$result = _$v ??
        new _$ProductRecord._(
            name: name,
            info: info,
            price: price,
            image: image,
            brand: brand,
            brandName: brandName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
