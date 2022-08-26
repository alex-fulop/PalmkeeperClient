// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackRecord> _$feedbackRecordSerializer =
    new _$FeedbackRecordSerializer();

class _$FeedbackRecordSerializer
    implements StructuredSerializer<FeedbackRecord> {
  @override
  final Iterable<Type> types = const [FeedbackRecord, _$FeedbackRecord];
  @override
  final String wireName = 'FeedbackRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FeedbackRecord object,
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
    value = object.ratingStars;
    if (value != null) {
      result
        ..add('ratingStars')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.orderRef;
    if (value != null) {
      result
        ..add('orderRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('userId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  FeedbackRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackRecordBuilder();

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
        case 'ratingStars':
          result.ratingStars = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'orderRef':
          result.orderRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$FeedbackRecord extends FeedbackRecord {
  @override
  final String? description;
  @override
  final double? ratingStars;
  @override
  final DocumentReference<Object?>? orderRef;
  @override
  final String? userId;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FeedbackRecord([void Function(FeedbackRecordBuilder)? updates]) =>
      (new FeedbackRecordBuilder()..update(updates))._build();

  _$FeedbackRecord._(
      {this.description,
      this.ratingStars,
      this.orderRef,
      this.userId,
      this.ffRef})
      : super._();

  @override
  FeedbackRecord rebuild(void Function(FeedbackRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackRecordBuilder toBuilder() =>
      new FeedbackRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackRecord &&
        description == other.description &&
        ratingStars == other.ratingStars &&
        orderRef == other.orderRef &&
        userId == other.userId &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, description.hashCode), ratingStars.hashCode),
                orderRef.hashCode),
            userId.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeedbackRecord')
          ..add('description', description)
          ..add('ratingStars', ratingStars)
          ..add('orderRef', orderRef)
          ..add('userId', userId)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FeedbackRecordBuilder
    implements Builder<FeedbackRecord, FeedbackRecordBuilder> {
  _$FeedbackRecord? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _ratingStars;
  double? get ratingStars => _$this._ratingStars;
  set ratingStars(double? ratingStars) => _$this._ratingStars = ratingStars;

  DocumentReference<Object?>? _orderRef;
  DocumentReference<Object?>? get orderRef => _$this._orderRef;
  set orderRef(DocumentReference<Object?>? orderRef) =>
      _$this._orderRef = orderRef;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FeedbackRecordBuilder() {
    FeedbackRecord._initializeBuilder(this);
  }

  FeedbackRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _ratingStars = $v.ratingStars;
      _orderRef = $v.orderRef;
      _userId = $v.userId;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeedbackRecord;
  }

  @override
  void update(void Function(FeedbackRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeedbackRecord build() => _build();

  _$FeedbackRecord _build() {
    final _$result = _$v ??
        new _$FeedbackRecord._(
            description: description,
            ratingStars: ratingStars,
            orderRef: orderRef,
            userId: userId,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
