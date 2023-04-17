import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'brand_record.g.dart';

abstract class BrandRecord implements Built<BrandRecord, BrandRecordBuilder> {
  static Serializer<BrandRecord> get serializer => _$brandRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BrandRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('brand');

  static Stream<BrandRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BrandRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BrandRecord._();
  factory BrandRecord([void Function(BrandRecordBuilder) updates]) =
      _$BrandRecord;

  static BrandRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBrandRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    BrandRecord.serializer,
    BrandRecord(
      (b) => b..name = name,
    ),
  );

  return firestoreData;
}
