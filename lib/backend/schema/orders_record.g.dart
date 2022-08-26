// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.palmerId;
    if (value != null) {
      result
        ..add('palmerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderDetails;
    if (value != null) {
      result
        ..add('orderDetails')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderSelectedProperty;
    if (value != null) {
      result
        ..add('orderSelectedProperty')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.orderInvitedContacts;
    if (value != null) {
      result
        ..add('orderInvitedContacts')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.clientId;
    if (value != null) {
      result
        ..add('clientId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderSelectedDateAndTime;
    if (value != null) {
      result
        ..add('orderSelectedDateAndTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.offer;
    if (value != null) {
      result
        ..add('offer')
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
  OrdersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'palmerId':
          result.palmerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'orderDetails':
          result.orderDetails = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'orderSelectedProperty':
          result.orderSelectedProperty = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'orderInvitedContacts':
          result.orderInvitedContacts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'clientId':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'orderSelectedDateAndTime':
          result.orderSelectedDateAndTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'offer':
          result.offer = serializers.deserialize(value,
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

class _$OrdersRecord extends OrdersRecord {
  @override
  final String? palmerId;
  @override
  final String? orderDetails;
  @override
  final DocumentReference<Object?>? orderSelectedProperty;
  @override
  final BuiltList<String>? orderInvitedContacts;
  @override
  final String? clientId;
  @override
  final DateTime? orderSelectedDateAndTime;
  @override
  final DocumentReference<Object?>? offer;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrdersRecord([void Function(OrdersRecordBuilder)? updates]) =>
      (new OrdersRecordBuilder()..update(updates))._build();

  _$OrdersRecord._(
      {this.palmerId,
      this.orderDetails,
      this.orderSelectedProperty,
      this.orderInvitedContacts,
      this.clientId,
      this.orderSelectedDateAndTime,
      this.offer,
      this.ffRef})
      : super._();

  @override
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        palmerId == other.palmerId &&
        orderDetails == other.orderDetails &&
        orderSelectedProperty == other.orderSelectedProperty &&
        orderInvitedContacts == other.orderInvitedContacts &&
        clientId == other.clientId &&
        orderSelectedDateAndTime == other.orderSelectedDateAndTime &&
        offer == other.offer &&
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
                            $jc($jc(0, palmerId.hashCode),
                                orderDetails.hashCode),
                            orderSelectedProperty.hashCode),
                        orderInvitedContacts.hashCode),
                    clientId.hashCode),
                orderSelectedDateAndTime.hashCode),
            offer.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersRecord')
          ..add('palmerId', palmerId)
          ..add('orderDetails', orderDetails)
          ..add('orderSelectedProperty', orderSelectedProperty)
          ..add('orderInvitedContacts', orderInvitedContacts)
          ..add('clientId', clientId)
          ..add('orderSelectedDateAndTime', orderSelectedDateAndTime)
          ..add('offer', offer)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord? _$v;

  String? _palmerId;
  String? get palmerId => _$this._palmerId;
  set palmerId(String? palmerId) => _$this._palmerId = palmerId;

  String? _orderDetails;
  String? get orderDetails => _$this._orderDetails;
  set orderDetails(String? orderDetails) => _$this._orderDetails = orderDetails;

  DocumentReference<Object?>? _orderSelectedProperty;
  DocumentReference<Object?>? get orderSelectedProperty =>
      _$this._orderSelectedProperty;
  set orderSelectedProperty(
          DocumentReference<Object?>? orderSelectedProperty) =>
      _$this._orderSelectedProperty = orderSelectedProperty;

  ListBuilder<String>? _orderInvitedContacts;
  ListBuilder<String> get orderInvitedContacts =>
      _$this._orderInvitedContacts ??= new ListBuilder<String>();
  set orderInvitedContacts(ListBuilder<String>? orderInvitedContacts) =>
      _$this._orderInvitedContacts = orderInvitedContacts;

  String? _clientId;
  String? get clientId => _$this._clientId;
  set clientId(String? clientId) => _$this._clientId = clientId;

  DateTime? _orderSelectedDateAndTime;
  DateTime? get orderSelectedDateAndTime => _$this._orderSelectedDateAndTime;
  set orderSelectedDateAndTime(DateTime? orderSelectedDateAndTime) =>
      _$this._orderSelectedDateAndTime = orderSelectedDateAndTime;

  DocumentReference<Object?>? _offer;
  DocumentReference<Object?>? get offer => _$this._offer;
  set offer(DocumentReference<Object?>? offer) => _$this._offer = offer;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _palmerId = $v.palmerId;
      _orderDetails = $v.orderDetails;
      _orderSelectedProperty = $v.orderSelectedProperty;
      _orderInvitedContacts = $v.orderInvitedContacts?.toBuilder();
      _clientId = $v.clientId;
      _orderSelectedDateAndTime = $v.orderSelectedDateAndTime;
      _offer = $v.offer;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersRecord build() => _build();

  _$OrdersRecord _build() {
    _$OrdersRecord _$result;
    try {
      _$result = _$v ??
          new _$OrdersRecord._(
              palmerId: palmerId,
              orderDetails: orderDetails,
              orderSelectedProperty: orderSelectedProperty,
              orderInvitedContacts: _orderInvitedContacts?.build(),
              clientId: clientId,
              orderSelectedDateAndTime: orderSelectedDateAndTime,
              offer: offer,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orderInvitedContacts';
        _orderInvitedContacts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrdersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
