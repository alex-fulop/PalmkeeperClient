import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'emergencies_record.g.dart';

abstract class EmergenciesRecord
    implements Built<EmergenciesRecord, EmergenciesRecordBuilder> {
  static Serializer<EmergenciesRecord> get serializer =>
      _$emergenciesRecordSerializer;

  String? get description;

  String? get status;

  BuiltList<String>? get images;

  DocumentReference? get orderRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EmergenciesRecordBuilder builder) => builder
    ..description = ''
    ..status = ''
    ..images = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('emergencies');

  static Stream<EmergenciesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmergenciesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmergenciesRecord._();
  factory EmergenciesRecord([void Function(EmergenciesRecordBuilder) updates]) =
      _$EmergenciesRecord;

  static EmergenciesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmergenciesRecordData({
  String? description,
  String? status,
  DocumentReference? orderRef,
}) {
  final firestoreData = serializers.toFirestore(
    EmergenciesRecord.serializer,
    EmergenciesRecord(
      (e) => e
        ..description = description
        ..status = status
        ..images = null
        ..orderRef = orderRef,
    ),
  );

  return firestoreData;
}
