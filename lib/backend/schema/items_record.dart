import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'items_record.g.dart';

abstract class ItemsRecord implements Built<ItemsRecord, ItemsRecordBuilder> {
  static Serializer<ItemsRecord> get serializer => _$itemsRecordSerializer;

  String? get name;

  String? get desc;

  String? get status;

  String? get image;

  DocumentReference? get propertyRef;

  double? get quantity;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ItemsRecordBuilder builder) => builder
    ..name = ''
    ..desc = ''
    ..status = ''
    ..image = ''
    ..quantity = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('items');

  static Stream<ItemsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ItemsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ItemsRecord._();
  factory ItemsRecord([void Function(ItemsRecordBuilder) updates]) =
      _$ItemsRecord;

  static ItemsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createItemsRecordData({
  String? name,
  String? desc,
  String? status,
  String? image,
  DocumentReference? propertyRef,
  double? quantity,
}) {
  final firestoreData = serializers.toFirestore(
    ItemsRecord.serializer,
    ItemsRecord(
      (i) => i
        ..name = name
        ..desc = desc
        ..status = status
        ..image = image
        ..propertyRef = propertyRef
        ..quantity = quantity,
    ),
  );

  return firestoreData;
}
