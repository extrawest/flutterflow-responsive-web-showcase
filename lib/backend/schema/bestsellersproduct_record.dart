import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bestsellersproduct_record.g.dart';

abstract class BestsellersproductRecord
    implements
        Built<BestsellersproductRecord, BestsellersproductRecordBuilder> {
  static Serializer<BestsellersproductRecord> get serializer =>
      _$bestsellersproductRecordSerializer;

  String? get name;

  String? get info;

  double? get price;

  DocumentReference? get brand;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BestsellersproductRecordBuilder builder) =>
      builder
        ..name = ''
        ..info = ''
        ..price = 0.0
        ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bestsellersproduct');

  static Stream<BestsellersproductRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BestsellersproductRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BestsellersproductRecord._();
  factory BestsellersproductRecord(
          [void Function(BestsellersproductRecordBuilder) updates]) =
      _$BestsellersproductRecord;

  static BestsellersproductRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBestsellersproductRecordData({
  String? name,
  String? info,
  double? price,
  DocumentReference? brand,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    BestsellersproductRecord.serializer,
    BestsellersproductRecord(
      (b) => b
        ..name = name
        ..info = info
        ..price = price
        ..brand = brand
        ..image = image,
    ),
  );

  return firestoreData;
}
