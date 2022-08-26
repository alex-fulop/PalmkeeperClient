// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OffersRecord> _$offersRecordSerializer =
    new _$OffersRecordSerializer();

class _$OffersRecordSerializer implements StructuredSerializer<OffersRecord> {
  @override
  final Iterable<Type> types = const [OffersRecord, _$OffersRecord];
  @override
  final String wireName = 'OffersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OffersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderRef;
    if (value != null) {
      result
        ..add('orderRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.palmerRef;
    if (value != null) {
      result
        ..add('palmerRef')
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
  OffersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OffersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'orderRef':
          result.orderRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'palmerRef':
          result.palmerRef = serializers.deserialize(value,
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

class _$OffersRecord extends OffersRecord {
  @override
  final String? price;
  @override
  final DocumentReference<Object?>? orderRef;
  @override
  final DocumentReference<Object?>? palmerRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OffersRecord([void Function(OffersRecordBuilder)? updates]) =>
      (new OffersRecordBuilder()..update(updates))._build();

  _$OffersRecord._({this.price, this.orderRef, this.palmerRef, this.ffRef})
      : super._();

  @override
  OffersRecord rebuild(void Function(OffersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OffersRecordBuilder toBuilder() => new OffersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OffersRecord &&
        price == other.price &&
        orderRef == other.orderRef &&
        palmerRef == other.palmerRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, price.hashCode), orderRef.hashCode), palmerRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OffersRecord')
          ..add('price', price)
          ..add('orderRef', orderRef)
          ..add('palmerRef', palmerRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OffersRecordBuilder
    implements Builder<OffersRecord, OffersRecordBuilder> {
  _$OffersRecord? _$v;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  DocumentReference<Object?>? _orderRef;
  DocumentReference<Object?>? get orderRef => _$this._orderRef;
  set orderRef(DocumentReference<Object?>? orderRef) =>
      _$this._orderRef = orderRef;

  DocumentReference<Object?>? _palmerRef;
  DocumentReference<Object?>? get palmerRef => _$this._palmerRef;
  set palmerRef(DocumentReference<Object?>? palmerRef) =>
      _$this._palmerRef = palmerRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OffersRecordBuilder() {
    OffersRecord._initializeBuilder(this);
  }

  OffersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _price = $v.price;
      _orderRef = $v.orderRef;
      _palmerRef = $v.palmerRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OffersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OffersRecord;
  }

  @override
  void update(void Function(OffersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OffersRecord build() => _build();

  _$OffersRecord _build() {
    final _$result = _$v ??
        new _$OffersRecord._(
            price: price,
            orderRef: orderRef,
            palmerRef: palmerRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
