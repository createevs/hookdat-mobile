import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'bookings_record.g.dart';

abstract class BookingsRecord
    implements Built<BookingsRecord, BookingsRecordBuilder> {
  static Serializer<BookingsRecord> get serializer =>
      _$bookingsRecordSerializer;

  DocumentReference? get user;

  @BuiltValueField(wireName: 'date_time')
  DateTime? get dateTime;

  @BuiltValueField(wireName: 'time_of_day')
  BuiltList<String>? get timeOfDay;

  @BuiltValueField(wireName: 'charter_type')
  BuiltList<String>? get charterType;

  @BuiltValueField(wireName: 'number_of_anglers')
  BuiltList<String>? get numberOfAnglers;

  @BuiltValueField(wireName: 'is_confirmed')
  bool? get isConfirmed;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BookingsRecordBuilder builder) => builder
    ..timeOfDay = ListBuilder()
    ..charterType = ListBuilder()
    ..numberOfAnglers = ListBuilder()
    ..isConfirmed = false
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bookings');

  static Stream<BookingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BookingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BookingsRecord._();
  factory BookingsRecord([void Function(BookingsRecordBuilder) updates]) =
      _$BookingsRecord;

  static BookingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBookingsRecordData({
  DocumentReference? user,
  DateTime? dateTime,
  bool? isConfirmed,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    BookingsRecord.serializer,
    BookingsRecord(
      (b) => b
        ..user = user
        ..dateTime = dateTime
        ..timeOfDay = null
        ..charterType = null
        ..numberOfAnglers = null
        ..isConfirmed = isConfirmed
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
