import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'properties_record.g.dart';

abstract class PropertiesRecord
    implements Built<PropertiesRecord, PropertiesRecordBuilder> {
  static Serializer<PropertiesRecord> get serializer =>
      _$propertiesRecordSerializer;

  String? get ownerId;

  String? get name;

  String? get location;

  String? get image;

  String? get parkingLot;

  String? get parkingLotLocation;

  String? get parkingLotImage;

  BuiltList<String>? get accessGroup;

  String? get accessPickupLocation;

  String? get accessDropoffLocation;

  String? get accessNumericalCode;

  String? get details;

  double? get bedrooms;

  double? get bathrooms;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PropertiesRecordBuilder builder) => builder
    ..ownerId = ''
    ..name = ''
    ..location = ''
    ..image = ''
    ..parkingLot = ''
    ..parkingLotLocation = ''
    ..parkingLotImage = ''
    ..accessGroup = ListBuilder()
    ..accessPickupLocation = ''
    ..accessDropoffLocation = ''
    ..accessNumericalCode = ''
    ..details = ''
    ..bedrooms = 0.0
    ..bathrooms = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('properties');

  static Stream<PropertiesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PropertiesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PropertiesRecord._();
  factory PropertiesRecord([void Function(PropertiesRecordBuilder) updates]) =
      _$PropertiesRecord;

  static PropertiesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPropertiesRecordData({
  String? ownerId,
  String? name,
  String? location,
  String? image,
  String? parkingLot,
  String? parkingLotLocation,
  String? parkingLotImage,
  String? accessPickupLocation,
  String? accessDropoffLocation,
  String? accessNumericalCode,
  String? details,
  double? bedrooms,
  double? bathrooms,
}) {
  final firestoreData = serializers.toFirestore(
    PropertiesRecord.serializer,
    PropertiesRecord(
      (p) => p
        ..ownerId = ownerId
        ..name = name
        ..location = location
        ..image = image
        ..parkingLot = parkingLot
        ..parkingLotLocation = parkingLotLocation
        ..parkingLotImage = parkingLotImage
        ..accessGroup = null
        ..accessPickupLocation = accessPickupLocation
        ..accessDropoffLocation = accessDropoffLocation
        ..accessNumericalCode = accessNumericalCode
        ..details = details
        ..bedrooms = bedrooms
        ..bathrooms = bathrooms,
    ),
  );

  return firestoreData;
}
