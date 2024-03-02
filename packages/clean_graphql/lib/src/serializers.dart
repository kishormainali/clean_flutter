import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;

/// {@template date_serializer}
/// A [PrimitiveSerializer] for [DateTime]
/// {@endtemplate}
class DateSerializer implements PrimitiveSerializer<DateTime> {
  @override
  DateTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (serialized is String) {
      return DateTime.parse(serialized);
    }
    if (serialized is int) {
      return DateTime.fromMillisecondsSinceEpoch(serialized);
    }
    throw ArgumentError("Invalid date format");
  }

  @override
  Object serialize(
    Serializers serializers,
    DateTime date, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      date.millisecondsSinceEpoch;

  @override
  Iterable<Type> get types => [DateTime];

  @override
  String get wireName => "Date";
}

/// {@template date_time_serializer}
/// A [PrimitiveSerializer] for [DateTime]
/// {@endtemplate}
class DateTimeSerializer implements PrimitiveSerializer<DateTime> {
  @override
  DateTime deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    if (serialized is String) {
      return DateTime.parse(serialized);
    }
    if (serialized is int) {
      return DateTime.fromMillisecondsSinceEpoch(serialized);
    }
    throw ArgumentError("Invalid date format");
  }

  @override
  Object serialize(
    Serializers serializers,
    DateTime date, {
    FullType specifiedType = FullType.unspecified,
  }) =>
      date.millisecondsSinceEpoch;

  @override
  Iterable<Type> get types => [DateTime];

  @override
  String get wireName => "DateTime";
}

/// {@template upload_serializer}
/// A [PrimitiveSerializer] for [MultipartFile]
/// {@endtemplate}
class UploadSerializer extends PrimitiveSerializer<MultipartFile> {
  @override
  MultipartFile deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    assert(
      serialized is String,
      "UploadSerializer expected 'String' but got ${serialized.runtimeType}",
    );
    return MultipartFile.fromString(
      serialized.toString(),
      filename: p.basename(serialized.toString()),
      contentType: MediaType.parse(lookupMimeType(serialized.toString())!),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    MultipartFile object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return object;
  }

  @override
  Iterable<Type> get types => [MultipartFile];

  @override
  String get wireName => 'Upload';
}
