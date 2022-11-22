// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BookingsRecord> _$bookingsRecordSerializer =
    new _$BookingsRecordSerializer();

class _$BookingsRecordSerializer
    implements StructuredSerializer<BookingsRecord> {
  @override
  final Iterable<Type> types = const [BookingsRecord, _$BookingsRecord];
  @override
  final String wireName = 'BookingsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, BookingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.dateTime;
    if (value != null) {
      result
        ..add('date_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.timeOfDay;
    if (value != null) {
      result
        ..add('time_of_day')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.charterType;
    if (value != null) {
      result
        ..add('charter_type')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.numberOfAnglers;
    if (value != null) {
      result
        ..add('number_of_anglers')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.isConfirmed;
    if (value != null) {
      result
        ..add('is_confirmed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  BookingsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BookingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'user':
          result.user = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'date_time':
          result.dateTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'time_of_day':
          result.timeOfDay.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'charter_type':
          result.charterType.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'number_of_anglers':
          result.numberOfAnglers.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'is_confirmed':
          result.isConfirmed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$BookingsRecord extends BookingsRecord {
  @override
  final DocumentReference<Object> user;
  @override
  final DateTime dateTime;
  @override
  final BuiltList<String> timeOfDay;
  @override
  final BuiltList<String> charterType;
  @override
  final BuiltList<String> numberOfAnglers;
  @override
  final bool isConfirmed;
  @override
  final DocumentReference<Object> reference;

  factory _$BookingsRecord([void Function(BookingsRecordBuilder) updates]) =>
      (new BookingsRecordBuilder()..update(updates)).build();

  _$BookingsRecord._(
      {this.user,
      this.dateTime,
      this.timeOfDay,
      this.charterType,
      this.numberOfAnglers,
      this.isConfirmed,
      this.reference})
      : super._();

  @override
  BookingsRecord rebuild(void Function(BookingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BookingsRecordBuilder toBuilder() =>
      new BookingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BookingsRecord &&
        user == other.user &&
        dateTime == other.dateTime &&
        timeOfDay == other.timeOfDay &&
        charterType == other.charterType &&
        numberOfAnglers == other.numberOfAnglers &&
        isConfirmed == other.isConfirmed &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, user.hashCode), dateTime.hashCode),
                        timeOfDay.hashCode),
                    charterType.hashCode),
                numberOfAnglers.hashCode),
            isConfirmed.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BookingsRecord')
          ..add('user', user)
          ..add('dateTime', dateTime)
          ..add('timeOfDay', timeOfDay)
          ..add('charterType', charterType)
          ..add('numberOfAnglers', numberOfAnglers)
          ..add('isConfirmed', isConfirmed)
          ..add('reference', reference))
        .toString();
  }
}

class BookingsRecordBuilder
    implements Builder<BookingsRecord, BookingsRecordBuilder> {
  _$BookingsRecord _$v;

  DocumentReference<Object> _user;
  DocumentReference<Object> get user => _$this._user;
  set user(DocumentReference<Object> user) => _$this._user = user;

  DateTime _dateTime;
  DateTime get dateTime => _$this._dateTime;
  set dateTime(DateTime dateTime) => _$this._dateTime = dateTime;

  ListBuilder<String> _timeOfDay;
  ListBuilder<String> get timeOfDay =>
      _$this._timeOfDay ??= new ListBuilder<String>();
  set timeOfDay(ListBuilder<String> timeOfDay) => _$this._timeOfDay = timeOfDay;

  ListBuilder<String> _charterType;
  ListBuilder<String> get charterType =>
      _$this._charterType ??= new ListBuilder<String>();
  set charterType(ListBuilder<String> charterType) =>
      _$this._charterType = charterType;

  ListBuilder<String> _numberOfAnglers;
  ListBuilder<String> get numberOfAnglers =>
      _$this._numberOfAnglers ??= new ListBuilder<String>();
  set numberOfAnglers(ListBuilder<String> numberOfAnglers) =>
      _$this._numberOfAnglers = numberOfAnglers;

  bool _isConfirmed;
  bool get isConfirmed => _$this._isConfirmed;
  set isConfirmed(bool isConfirmed) => _$this._isConfirmed = isConfirmed;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  BookingsRecordBuilder() {
    BookingsRecord._initializeBuilder(this);
  }

  BookingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user;
      _dateTime = $v.dateTime;
      _timeOfDay = $v.timeOfDay?.toBuilder();
      _charterType = $v.charterType?.toBuilder();
      _numberOfAnglers = $v.numberOfAnglers?.toBuilder();
      _isConfirmed = $v.isConfirmed;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BookingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BookingsRecord;
  }

  @override
  void update(void Function(BookingsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BookingsRecord build() {
    _$BookingsRecord _$result;
    try {
      _$result = _$v ??
          new _$BookingsRecord._(
              user: user,
              dateTime: dateTime,
              timeOfDay: _timeOfDay?.build(),
              charterType: _charterType?.build(),
              numberOfAnglers: _numberOfAnglers?.build(),
              isConfirmed: isConfirmed,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'timeOfDay';
        _timeOfDay?.build();
        _$failedField = 'charterType';
        _charterType?.build();
        _$failedField = 'numberOfAnglers';
        _numberOfAnglers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BookingsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
