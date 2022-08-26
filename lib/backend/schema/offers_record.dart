import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'offers_record.g.dart';

abstract class OffersRecord
    implements Built<OffersRecord, OffersRecordBuilder> {
  static Serializer<OffersRecord> get serializer => _$offersRecordSerializer;

  String? get price;

  DocumentReference? get orderRef;

  DocumentReference? get palmerRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OffersRecordBuilder builder) =>
      builder..price = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('offers');

  static Stream<OffersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OffersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OffersRecord._();
  factory OffersRecord([void Function(OffersRecordBuilder) updates]) =
      _$OffersRecord;

  static OffersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOffersRecordData({
  String? price,
  DocumentReference? orderRef,
  DocumentReference? palmerRef,
}) {
  final firestoreData = serializers.toFirestore(
    OffersRecord.serializer,
    OffersRecord(
      (o) => o
        ..price = price
        ..orderRef = orderRef
        ..palmerRef = palmerRef,
    ),
  );

  return firestoreData;
}
