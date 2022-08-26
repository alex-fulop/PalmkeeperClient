// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemsRecord> _$itemsRecordSerializer = new _$ItemsRecordSerializer();

class _$ItemsRecordSerializer implements StructuredSerializer<ItemsRecord> {
  @override
  final Iterable<Type> types = const [ItemsRecord, _$ItemsRecord];
  @override
  final String wireName = 'ItemsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
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
    value = object.propertyRef;
    if (value != null) {
      result
        ..add('propertyRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
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
  ItemsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'propertyRef':
          result.propertyRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
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

class _$ItemsRecord extends ItemsRecord {
  @override
  final String? name;
  @override
  final String? desc;
  @override
  final String? status;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? propertyRef;
  @override
  final double? quantity;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ItemsRecord([void Function(ItemsRecordBuilder)? updates]) =>
      (new ItemsRecordBuilder()..update(updates))._build();

  _$ItemsRecord._(
      {this.name,
      this.desc,
      this.status,
      this.image,
      this.propertyRef,
      this.quantity,
      this.ffRef})
      : super._();

  @override
  ItemsRecord rebuild(void Function(ItemsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsRecordBuilder toBuilder() => new ItemsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemsRecord &&
        name == other.name &&
        desc == other.desc &&
        status == other.status &&
        image == other.image &&
        propertyRef == other.propertyRef &&
        quantity == other.quantity &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), desc.hashCode),
                        status.hashCode),
                    image.hashCode),
                propertyRef.hashCode),
            quantity.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemsRecord')
          ..add('name', name)
          ..add('desc', desc)
          ..add('status', status)
          ..add('image', image)
          ..add('propertyRef', propertyRef)
          ..add('quantity', quantity)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ItemsRecordBuilder implements Builder<ItemsRecord, ItemsRecordBuilder> {
  _$ItemsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _propertyRef;
  DocumentReference<Object?>? get propertyRef => _$this._propertyRef;
  set propertyRef(DocumentReference<Object?>? propertyRef) =>
      _$this._propertyRef = propertyRef;

  double? _quantity;
  double? get quantity => _$this._quantity;
  set quantity(double? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ItemsRecordBuilder() {
    ItemsRecord._initializeBuilder(this);
  }

  ItemsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _desc = $v.desc;
      _status = $v.status;
      _image = $v.image;
      _propertyRef = $v.propertyRef;
      _quantity = $v.quantity;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemsRecord;
  }

  @override
  void update(void Function(ItemsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemsRecord build() => _build();

  _$ItemsRecord _build() {
    final _$result = _$v ??
        new _$ItemsRecord._(
            name: name,
            desc: desc,
            status: status,
            image: image,
            propertyRef: propertyRef,
            quantity: quantity,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
