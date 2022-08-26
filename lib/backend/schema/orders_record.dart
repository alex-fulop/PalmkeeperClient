import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  String? get palmerId;

  String? get orderDetails;

  DocumentReference? get orderSelectedProperty;

  BuiltList<String>? get orderInvitedContacts;

  String? get clientId;

  DateTime? get orderSelectedDateAndTime;

  DocumentReference? get offer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..palmerId = ''
    ..orderDetails = ''
    ..orderInvitedContacts = ListBuilder()
    ..clientId = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdersRecordData({
  String? palmerId,
  String? orderDetails,
  DocumentReference? orderSelectedProperty,
  String? clientId,
  DateTime? orderSelectedDateAndTime,
  DocumentReference? offer,
}) {
  final firestoreData = serializers.toFirestore(
    OrdersRecord.serializer,
    OrdersRecord(
      (o) => o
        ..palmerId = palmerId
        ..orderDetails = orderDetails
        ..orderSelectedProperty = orderSelectedProperty
        ..orderInvitedContacts = null
        ..clientId = clientId
        ..orderSelectedDateAndTime = orderSelectedDateAndTime
        ..offer = offer,
    ),
  );

  return firestoreData;
}
