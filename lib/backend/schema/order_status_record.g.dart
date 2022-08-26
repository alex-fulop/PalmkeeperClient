// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_status_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderStatusRecord> _$orderStatusRecordSerializer =
    new _$OrderStatusRecordSerializer();

class _$OrderStatusRecordSerializer
    implements StructuredSerializer<OrderStatusRecord> {
  @override
  final Iterable<Type> types = const [OrderStatusRecord, _$OrderStatusRecord];
  @override
  final String wireName = 'OrderStatusRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrderStatusRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.orderId;
    if (value != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.palmerArrived;
    if (value != null) {
      result
        ..add('palmerArrived')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.palmerIsInProperty;
    if (value != null) {
      result
        ..add('palmerIsInProperty')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.findProblem;
    if (value != null) {
      result
        ..add('findProblem')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.outOfProperty;
    if (value != null) {
      result
        ..add('outOfProperty')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.returnedKey;
    if (value != null) {
      result
        ..add('returnedKey')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  OrderStatusRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderStatusRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'palmerArrived':
          result.palmerArrived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'palmerIsInProperty':
          result.palmerIsInProperty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'findProblem':
          result.findProblem = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'outOfProperty':
          result.outOfProperty = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'returnedKey':
          result.returnedKey = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$OrderStatusRecord extends OrderStatusRecord {
  @override
  final String? orderId;
  @override
  final bool? palmerArrived;
  @override
  final bool? palmerIsInProperty;
  @override
  final bool? findProblem;
  @override
  final bool? outOfProperty;
  @override
  final bool? returnedKey;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrderStatusRecord(
          [void Function(OrderStatusRecordBuilder)? updates]) =>
      (new OrderStatusRecordBuilder()..update(updates))._build();

  _$OrderStatusRecord._(
      {this.orderId,
      this.palmerArrived,
      this.palmerIsInProperty,
      this.findProblem,
      this.outOfProperty,
      this.returnedKey,
      this.ffRef})
      : super._();

  @override
  OrderStatusRecord rebuild(void Function(OrderStatusRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderStatusRecordBuilder toBuilder() =>
      new OrderStatusRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderStatusRecord &&
        orderId == other.orderId &&
        palmerArrived == other.palmerArrived &&
        palmerIsInProperty == other.palmerIsInProperty &&
        findProblem == other.findProblem &&
        outOfProperty == other.outOfProperty &&
        returnedKey == other.returnedKey &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, orderId.hashCode), palmerArrived.hashCode),
                        palmerIsInProperty.hashCode),
                    findProblem.hashCode),
                outOfProperty.hashCode),
            returnedKey.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderStatusRecord')
          ..add('orderId', orderId)
          ..add('palmerArrived', palmerArrived)
          ..add('palmerIsInProperty', palmerIsInProperty)
          ..add('findProblem', findProblem)
          ..add('outOfProperty', outOfProperty)
          ..add('returnedKey', returnedKey)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrderStatusRecordBuilder
    implements Builder<OrderStatusRecord, OrderStatusRecordBuilder> {
  _$OrderStatusRecord? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  bool? _palmerArrived;
  bool? get palmerArrived => _$this._palmerArrived;
  set palmerArrived(bool? palmerArrived) =>
      _$this._palmerArrived = palmerArrived;

  bool? _palmerIsInProperty;
  bool? get palmerIsInProperty => _$this._palmerIsInProperty;
  set palmerIsInProperty(bool? palmerIsInProperty) =>
      _$this._palmerIsInProperty = palmerIsInProperty;

  bool? _findProblem;
  bool? get findProblem => _$this._findProblem;
  set findProblem(bool? findProblem) => _$this._findProblem = findProblem;

  bool? _outOfProperty;
  bool? get outOfProperty => _$this._outOfProperty;
  set outOfProperty(bool? outOfProperty) =>
      _$this._outOfProperty = outOfProperty;

  bool? _returnedKey;
  bool? get returnedKey => _$this._returnedKey;
  set returnedKey(bool? returnedKey) => _$this._returnedKey = returnedKey;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrderStatusRecordBuilder() {
    OrderStatusRecord._initializeBuilder(this);
  }

  OrderStatusRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _palmerArrived = $v.palmerArrived;
      _palmerIsInProperty = $v.palmerIsInProperty;
      _findProblem = $v.findProblem;
      _outOfProperty = $v.outOfProperty;
      _returnedKey = $v.returnedKey;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderStatusRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderStatusRecord;
  }

  @override
  void update(void Function(OrderStatusRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderStatusRecord build() => _build();

  _$OrderStatusRecord _build() {
    final _$result = _$v ??
        new _$OrderStatusRecord._(
            orderId: orderId,
            palmerArrived: palmerArrived,
            palmerIsInProperty: palmerIsInProperty,
            findProblem: findProblem,
            outOfProperty: outOfProperty,
            returnedKey: returnedKey,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
