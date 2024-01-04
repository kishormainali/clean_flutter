import 'package:freezed_annotation/freezed_annotation.dart';

part 'logger_options.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
class LoggerOptions with _$LoggerOptions {
  const factory LoggerOptions({
    /// enable logger Defaults to false
    @Default(true) bool request,
    @Default(false) bool requestHeader,
    @Default(false) bool requestBody,
    @Default(true) bool responseBody,
    @Default(false) bool responseHeader,
    @Default(true) bool error,
    @Default(false) bool compact,
    @Default(140) int maxWidth,
  }) = _LoggerOptions;
}
