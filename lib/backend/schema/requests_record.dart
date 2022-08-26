import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'requests_record.g.dart';

abstract class RequestsRecord
    implements Built<RequestsRecord, RequestsRecordBuilder> {
  static Serializer<RequestsRecord> get serializer =>
      _$requestsRecordSerializer;

  DocumentReference? get sender;

  DocumentReference? get receiver;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RequestsRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('requests');

  static Stream<RequestsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RequestsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RequestsRecord._();
  factory RequestsRecord([void Function(RequestsRecordBuilder) updates]) =
      _$RequestsRecord;

  static RequestsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRequestsRecordData({
  DocumentReference? sender,
  DocumentReference? receiver,
}) {
  final firestoreData = serializers.toFirestore(
    RequestsRecord.serializer,
    RequestsRecord(
      (r) => r
        ..sender = sender
        ..receiver = receiver,
    ),
  );

  return firestoreData;
}
