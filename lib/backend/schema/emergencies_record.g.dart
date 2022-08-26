// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emergencies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmergenciesRecord> _$emergenciesRecordSerializer =
    new _$EmergenciesRecordSerializer();

class _$EmergenciesRecordSerializer
    implements StructuredSerializer<EmergenciesRecord> {
  @override
  final Iterable<Type> types = const [EmergenciesRecord, _$EmergenciesRecord];
  @override
  final String wireName = 'EmergenciesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmergenciesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.orderRef;
    if (value != null) {
      result
        ..add('orderRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  EmergenciesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmergenciesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'orderRef':
          result.orderRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$EmergenciesRecord extends EmergenciesRecord {
  @override
  final String? description;
  @override
  final String? status;
  @override
  final BuiltList<String>? images;
  @override
  final DocumentReference<Object?>? orderRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EmergenciesRecord(
          [void Function(EmergenciesRecordBuilder)? updates]) =>
      (new EmergenciesRecordBuilder()..update(updates))._build();

  _$EmergenciesRecord._(
      {this.description, this.status, this.images, this.orderRef, this.ffRef})
      : super._();

  @override
  EmergenciesRecord rebuild(void Function(EmergenciesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmergenciesRecordBuilder toBuilder() =>
      new EmergenciesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmergenciesRecord &&
        description == other.description &&
        status == other.status &&
        images == other.images &&
        orderRef == other.orderRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, description.hashCode), status.hashCode),
                images.hashCode),
            orderRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmergenciesRecord')
          ..add('description', description)
          ..add('status', status)
          ..add('images', images)
          ..add('orderRef', orderRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EmergenciesRecordBuilder
    implements Builder<EmergenciesRecord, EmergenciesRecordBuilder> {
  _$EmergenciesRecord? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ListBuilder<String>? _images;
  ListBuilder<String> get images =>
      _$this._images ??= new ListBuilder<String>();
  set images(ListBuilder<String>? images) => _$this._images = images;

  DocumentReference<Object?>? _orderRef;
  DocumentReference<Object?>? get orderRef => _$this._orderRef;
  set orderRef(DocumentReference<Object?>? orderRef) =>
      _$this._orderRef = orderRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EmergenciesRecordBuilder() {
    EmergenciesRecord._initializeBuilder(this);
  }

  EmergenciesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _status = $v.status;
      _images = $v.images?.toBuilder();
      _orderRef = $v.orderRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmergenciesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmergenciesRecord;
  }

  @override
  void update(void Function(EmergenciesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmergenciesRecord build() => _build();

  _$EmergenciesRecord _build() {
    _$EmergenciesRecord _$result;
    try {
      _$result = _$v ??
          new _$EmergenciesRecord._(
              description: description,
              status: status,
              images: _images?.build(),
              orderRef: orderRef,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EmergenciesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
