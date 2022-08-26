// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'properties_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PropertiesRecord> _$propertiesRecordSerializer =
    new _$PropertiesRecordSerializer();

class _$PropertiesRecordSerializer
    implements StructuredSerializer<PropertiesRecord> {
  @override
  final Iterable<Type> types = const [PropertiesRecord, _$PropertiesRecord];
  @override
  final String wireName = 'PropertiesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PropertiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.ownerId;
    if (value != null) {
      result
        ..add('ownerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parkingLot;
    if (value != null) {
      result
        ..add('parkingLot')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parkingLotLocation;
    if (value != null) {
      result
        ..add('parkingLotLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parkingLotImage;
    if (value != null) {
      result
        ..add('parkingLotImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessGroup;
    if (value != null) {
      result
        ..add('accessGroup')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.accessPickupLocation;
    if (value != null) {
      result
        ..add('accessPickupLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessDropoffLocation;
    if (value != null) {
      result
        ..add('accessDropoffLocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessNumericalCode;
    if (value != null) {
      result
        ..add('accessNumericalCode')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.details;
    if (value != null) {
      result
        ..add('details')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bedrooms;
    if (value != null) {
      result
        ..add('bedrooms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bathrooms;
    if (value != null) {
      result
        ..add('bathrooms')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  PropertiesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PropertiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ownerId':
          result.ownerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parkingLot':
          result.parkingLot = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parkingLotLocation':
          result.parkingLotLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parkingLotImage':
          result.parkingLotImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accessGroup':
          result.accessGroup.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'accessPickupLocation':
          result.accessPickupLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accessDropoffLocation':
          result.accessDropoffLocation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accessNumericalCode':
          result.accessNumericalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'details':
          result.details = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bedrooms':
          result.bedrooms = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'bathrooms':
          result.bathrooms = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$PropertiesRecord extends PropertiesRecord {
  @override
  final String? ownerId;
  @override
  final String? name;
  @override
  final String? location;
  @override
  final String? image;
  @override
  final String? parkingLot;
  @override
  final String? parkingLotLocation;
  @override
  final String? parkingLotImage;
  @override
  final BuiltList<String>? accessGroup;
  @override
  final String? accessPickupLocation;
  @override
  final String? accessDropoffLocation;
  @override
  final String? accessNumericalCode;
  @override
  final String? details;
  @override
  final double? bedrooms;
  @override
  final double? bathrooms;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PropertiesRecord(
          [void Function(PropertiesRecordBuilder)? updates]) =>
      (new PropertiesRecordBuilder()..update(updates))._build();

  _$PropertiesRecord._(
      {this.ownerId,
      this.name,
      this.location,
      this.image,
      this.parkingLot,
      this.parkingLotLocation,
      this.parkingLotImage,
      this.accessGroup,
      this.accessPickupLocation,
      this.accessDropoffLocation,
      this.accessNumericalCode,
      this.details,
      this.bedrooms,
      this.bathrooms,
      this.ffRef})
      : super._();

  @override
  PropertiesRecord rebuild(void Function(PropertiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PropertiesRecordBuilder toBuilder() =>
      new PropertiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PropertiesRecord &&
        ownerId == other.ownerId &&
        name == other.name &&
        location == other.location &&
        image == other.image &&
        parkingLot == other.parkingLot &&
        parkingLotLocation == other.parkingLotLocation &&
        parkingLotImage == other.parkingLotImage &&
        accessGroup == other.accessGroup &&
        accessPickupLocation == other.accessPickupLocation &&
        accessDropoffLocation == other.accessDropoffLocation &&
        accessNumericalCode == other.accessNumericalCode &&
        details == other.details &&
        bedrooms == other.bedrooms &&
        bathrooms == other.bathrooms &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                ownerId
                                                                    .hashCode),
                                                            name.hashCode),
                                                        location.hashCode),
                                                    image.hashCode),
                                                parkingLot.hashCode),
                                            parkingLotLocation.hashCode),
                                        parkingLotImage.hashCode),
                                    accessGroup.hashCode),
                                accessPickupLocation.hashCode),
                            accessDropoffLocation.hashCode),
                        accessNumericalCode.hashCode),
                    details.hashCode),
                bedrooms.hashCode),
            bathrooms.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PropertiesRecord')
          ..add('ownerId', ownerId)
          ..add('name', name)
          ..add('location', location)
          ..add('image', image)
          ..add('parkingLot', parkingLot)
          ..add('parkingLotLocation', parkingLotLocation)
          ..add('parkingLotImage', parkingLotImage)
          ..add('accessGroup', accessGroup)
          ..add('accessPickupLocation', accessPickupLocation)
          ..add('accessDropoffLocation', accessDropoffLocation)
          ..add('accessNumericalCode', accessNumericalCode)
          ..add('details', details)
          ..add('bedrooms', bedrooms)
          ..add('bathrooms', bathrooms)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PropertiesRecordBuilder
    implements Builder<PropertiesRecord, PropertiesRecordBuilder> {
  _$PropertiesRecord? _$v;

  String? _ownerId;
  String? get ownerId => _$this._ownerId;
  set ownerId(String? ownerId) => _$this._ownerId = ownerId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _parkingLot;
  String? get parkingLot => _$this._parkingLot;
  set parkingLot(String? parkingLot) => _$this._parkingLot = parkingLot;

  String? _parkingLotLocation;
  String? get parkingLotLocation => _$this._parkingLotLocation;
  set parkingLotLocation(String? parkingLotLocation) =>
      _$this._parkingLotLocation = parkingLotLocation;

  String? _parkingLotImage;
  String? get parkingLotImage => _$this._parkingLotImage;
  set parkingLotImage(String? parkingLotImage) =>
      _$this._parkingLotImage = parkingLotImage;

  ListBuilder<String>? _accessGroup;
  ListBuilder<String> get accessGroup =>
      _$this._accessGroup ??= new ListBuilder<String>();
  set accessGroup(ListBuilder<String>? accessGroup) =>
      _$this._accessGroup = accessGroup;

  String? _accessPickupLocation;
  String? get accessPickupLocation => _$this._accessPickupLocation;
  set accessPickupLocation(String? accessPickupLocation) =>
      _$this._accessPickupLocation = accessPickupLocation;

  String? _accessDropoffLocation;
  String? get accessDropoffLocation => _$this._accessDropoffLocation;
  set accessDropoffLocation(String? accessDropoffLocation) =>
      _$this._accessDropoffLocation = accessDropoffLocation;

  String? _accessNumericalCode;
  String? get accessNumericalCode => _$this._accessNumericalCode;
  set accessNumericalCode(String? accessNumericalCode) =>
      _$this._accessNumericalCode = accessNumericalCode;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  double? _bedrooms;
  double? get bedrooms => _$this._bedrooms;
  set bedrooms(double? bedrooms) => _$this._bedrooms = bedrooms;

  double? _bathrooms;
  double? get bathrooms => _$this._bathrooms;
  set bathrooms(double? bathrooms) => _$this._bathrooms = bathrooms;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PropertiesRecordBuilder() {
    PropertiesRecord._initializeBuilder(this);
  }

  PropertiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _ownerId = $v.ownerId;
      _name = $v.name;
      _location = $v.location;
      _image = $v.image;
      _parkingLot = $v.parkingLot;
      _parkingLotLocation = $v.parkingLotLocation;
      _parkingLotImage = $v.parkingLotImage;
      _accessGroup = $v.accessGroup?.toBuilder();
      _accessPickupLocation = $v.accessPickupLocation;
      _accessDropoffLocation = $v.accessDropoffLocation;
      _accessNumericalCode = $v.accessNumericalCode;
      _details = $v.details;
      _bedrooms = $v.bedrooms;
      _bathrooms = $v.bathrooms;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PropertiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PropertiesRecord;
  }

  @override
  void update(void Function(PropertiesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PropertiesRecord build() => _build();

  _$PropertiesRecord _build() {
    _$PropertiesRecord _$result;
    try {
      _$result = _$v ??
          new _$PropertiesRecord._(
              ownerId: ownerId,
              name: name,
              location: location,
              image: image,
              parkingLot: parkingLot,
              parkingLotLocation: parkingLotLocation,
              parkingLotImage: parkingLotImage,
              accessGroup: _accessGroup?.build(),
              accessPickupLocation: accessPickupLocation,
              accessDropoffLocation: accessDropoffLocation,
              accessNumericalCode: accessNumericalCode,
              details: details,
              bedrooms: bedrooms,
              bathrooms: bathrooms,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'accessGroup';
        _accessGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PropertiesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
