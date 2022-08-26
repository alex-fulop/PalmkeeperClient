// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requests_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RequestsRecord> _$requestsRecordSerializer =
    new _$RequestsRecordSerializer();

class _$RequestsRecordSerializer
    implements StructuredSerializer<RequestsRecord> {
  @override
  final Iterable<Type> types = const [RequestsRecord, _$RequestsRecord];
  @override
  final String wireName = 'RequestsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RequestsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sender;
    if (value != null) {
      result
        ..add('sender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.receiver;
    if (value != null) {
      result
        ..add('receiver')
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
  RequestsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RequestsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sender':
          result.sender = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'receiver':
          result.receiver = serializers.deserialize(value,
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

class _$RequestsRecord extends RequestsRecord {
  @override
  final DocumentReference<Object?>? sender;
  @override
  final DocumentReference<Object?>? receiver;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RequestsRecord([void Function(RequestsRecordBuilder)? updates]) =>
      (new RequestsRecordBuilder()..update(updates))._build();

  _$RequestsRecord._({this.sender, this.receiver, this.ffRef}) : super._();

  @override
  RequestsRecord rebuild(void Function(RequestsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RequestsRecordBuilder toBuilder() =>
      new RequestsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RequestsRecord &&
        sender == other.sender &&
        receiver == other.receiver &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, sender.hashCode), receiver.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RequestsRecord')
          ..add('sender', sender)
          ..add('receiver', receiver)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RequestsRecordBuilder
    implements Builder<RequestsRecord, RequestsRecordBuilder> {
  _$RequestsRecord? _$v;

  DocumentReference<Object?>? _sender;
  DocumentReference<Object?>? get sender => _$this._sender;
  set sender(DocumentReference<Object?>? sender) => _$this._sender = sender;

  DocumentReference<Object?>? _receiver;
  DocumentReference<Object?>? get receiver => _$this._receiver;
  set receiver(DocumentReference<Object?>? receiver) =>
      _$this._receiver = receiver;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RequestsRecordBuilder() {
    RequestsRecord._initializeBuilder(this);
  }

  RequestsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sender = $v.sender;
      _receiver = $v.receiver;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RequestsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RequestsRecord;
  }

  @override
  void update(void Function(RequestsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RequestsRecord build() => _build();

  _$RequestsRecord _build() {
    final _$result = _$v ??
        new _$RequestsRecord._(
            sender: sender, receiver: receiver, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
