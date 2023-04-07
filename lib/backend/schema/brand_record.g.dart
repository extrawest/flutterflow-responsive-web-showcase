// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BrandRecord> _$brandRecordSerializer = new _$BrandRecordSerializer();

class _$BrandRecordSerializer implements StructuredSerializer<BrandRecord> {
  @override
  final Iterable<Type> types = const [BrandRecord, _$BrandRecord];
  @override
  final String wireName = 'BrandRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BrandRecord object,
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
  BrandRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BrandRecordBuilder();

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

class _$BrandRecord extends BrandRecord {
  @override
  final String? name;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BrandRecord([void Function(BrandRecordBuilder)? updates]) =>
      (new BrandRecordBuilder()..update(updates))._build();

  _$BrandRecord._({this.name, this.ffRef}) : super._();

  @override
  BrandRecord rebuild(void Function(BrandRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BrandRecordBuilder toBuilder() => new BrandRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BrandRecord && name == other.name && ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BrandRecord')
          ..add('name', name)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BrandRecordBuilder implements Builder<BrandRecord, BrandRecordBuilder> {
  _$BrandRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BrandRecordBuilder() {
    BrandRecord._initializeBuilder(this);
  }

  BrandRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BrandRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BrandRecord;
  }

  @override
  void update(void Function(BrandRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BrandRecord build() => _build();

  _$BrandRecord _build() {
    final _$result = _$v ?? new _$BrandRecord._(name: name, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
