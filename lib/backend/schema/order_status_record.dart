import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_status_record.g.dart';

abstract class OrderStatusRecord
    implements Built<OrderStatusRecord, OrderStatusRecordBuilder> {
  static Serializer<OrderStatusRecord> get serializer =>
      _$orderStatusRecordSerializer;

  String? get orderId;

  bool? get palmerArrived;

  bool? get palmerIsInProperty;

  bool? get findProblem;

  bool? get outOfProperty;

  bool? get returnedKey;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrderStatusRecordBuilder builder) => builder
    ..orderId = ''
    ..palmerArrived = false
    ..palmerIsInProperty = false
    ..findProblem = false
    ..outOfProperty = false
    ..returnedKey = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orderStatus');

  static Stream<OrderStatusRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrderStatusRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrderStatusRecord._();
  factory OrderStatusRecord([void Function(OrderStatusRecordBuilder) updates]) =
      _$OrderStatusRecord;

  static OrderStatusRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrderStatusRecordData({
  String? orderId,
  bool? palmerArrived,
  bool? palmerIsInProperty,
  bool? findProblem,
  bool? outOfProperty,
  bool? returnedKey,
}) {
  final firestoreData = serializers.toFirestore(
    OrderStatusRecord.serializer,
    OrderStatusRecord(
      (o) => o
        ..orderId = orderId
        ..palmerArrived = palmerArrived
        ..palmerIsInProperty = palmerIsInProperty
        ..findProblem = findProblem
        ..outOfProperty = outOfProperty
        ..returnedKey = returnedKey,
    ),
  );

  return firestoreData;
}
