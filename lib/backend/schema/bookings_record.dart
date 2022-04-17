import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bookings_record.g.dart';

abstract class BookingsRecord
    implements Built<BookingsRecord, BookingsRecordBuilder> {
  static Serializer<BookingsRecord> get serializer =>
      _$bookingsRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  @BuiltValueField(wireName: 'date_time')
  DateTime get dateTime;

  @nullable
  @BuiltValueField(wireName: 'time_of_day')
  BuiltList<String> get timeOfDay;

  @nullable
  @BuiltValueField(wireName: 'charter_type')
  BuiltList<String> get charterType;

  @nullable
  @BuiltValueField(wireName: 'number_of_anglers')
  BuiltList<String> get numberOfAnglers;

  @nullable
  @BuiltValueField(wireName: 'is_confirmed')
  bool get isConfirmed;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BookingsRecordBuilder builder) => builder
    ..timeOfDay = ListBuilder()
    ..charterType = ListBuilder()
    ..numberOfAnglers = ListBuilder()
    ..isConfirmed = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BookingsRecord._();
  factory BookingsRecord([void Function(BookingsRecordBuilder) updates]) =
      _$BookingsRecord;

  static BookingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference user,
  DateTime dateTime,
  bool isConfirmed,
}) =>
    serializers.toFirestore(
        BookingsRecord.serializer,
        BookingsRecord((b) => b
          ..user = user
          ..dateTime = dateTime
          ..timeOfDay = null
          ..charterType = null
          ..numberOfAnglers = null
          ..isConfirmed = isConfirmed));
