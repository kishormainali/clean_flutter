part of 'form.dart';

/// {@template validator}
///
/// A [Validator] is base class for handling form validation.
///
/// {@endtemplate}
abstract class Validator<T> {
  /// {@macro validator}
  const Validator(this.message);
  final String? message;

  bool isValid(T value);

  String? call(T value) {
    return isValid(value) ? null : message;
  }
}

/// {@template emailValidator}
///
/// A [Validator] that validates an email address.
///
/// {@endtemplate}
class EmailValidator extends Validator<String> {
  const EmailValidator(super.message);

  @override
  String? call(String value) {
    return value.isNullOrEmpty ? null : super.call(value);
  }

  @override
  bool isValid(String value) => value.isEmail;
}

/// {@template requiredValidator}
///
/// A [Validator] that validates if a value is not null or empty.
///
/// {@endtemplate}
class RequiredValidator<T> extends Validator<T> {
  const RequiredValidator(super.message);

  @override
  bool isValid(T value) {
    if (value is String) {
      return value.isNotNullNotEmpty;
    } else if (value is List) {
      return value.isNotEmpty;
    } else if (value is Map) {
      return value.isNotEmpty;
    } else {
      return value != null;
    }
  }
}

/// {@template maxLengthValidator}
///
/// A [Validator] that validates max length of string.
///
/// {@endtemplate}
class MaxLengthValidator extends Validator<String> {
  const MaxLengthValidator(super.message, this.limit);
  final int limit;

  @override
  bool isValid(String value) => value.length <= limit;
}

/// {@template minLengthValidator}
///
/// A [Validator] that validates min length of string.
///
/// {@endtemplate}
class MinLengthValidator extends Validator<String> {
  const MinLengthValidator(super.message, this.limit);

  final int limit;

  @override
  bool isValid(String value) {
    return value.length >= limit;
  }
}

/// {@template dateValidator}
/// A [Validator] that validates if a value is a valid date.
/// {@endtemplate}
class DateValidator extends Validator<String> {
  const DateValidator(
    super.message, {
    this.format,
  });

  final String? format;

  @override
  bool isValid(String value) {
    return value.parseDateTime(format: format) != null;
  }
}

/// {@template url_validator}
/// A [Validator] that validates if a value is a valid url.
/// {@endtemplate}
class URLValidator extends Validator<String> {
  const URLValidator(super.message);

  @override
  bool isValid(String value) {
    final isValidURL = Uri.tryParse(value);
    return isValidURL != null;
  }
}

/// {@template matchValidator}
///
/// A [Validator] that compares two values.
/// If [compareFn] is not provided, it will compare the string values
/// of the two values.
///
/// {@endtemplate}

class MatchValidator<T> extends Validator<T> {
  const MatchValidator(
    super.message,
    this.match, {
    this.compareFn,
    this.key = 'default-match-validator',
  });

  /// The value to be compared with.
  final T match;

  /// A function that compares two values.
  final bool Function(T value, T matchValue)? compareFn;

  /// The key of the field to be used in compare with validators.
  final String key;

  @override
  bool isValid(T value) {
    return compareFn?.call(value, match) ?? value == match;
  }
}

/// {@template match_holder}
///
/// A [MatchHolder] is a class that holds the match value and its message.
/// It is used in [Field.matchMultiple] method to compare with multiple fields.
///
/// {@endtemplate}
class MatchHolder<T> extends Equatable {
  const MatchHolder({
    required this.key,
    required this.match,
    required this.message,
    this.compareFn,
  });
  final String key;
  final T match;
  final bool Function(T value, T matchValue)? compareFn;
  final String message;

  @override
  List<Object?> get props => [
        key,
        match,
        message,
        compareFn,
      ];
}

extension on String? {
  /// isNullOrEmpty
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  /// isNotNullNotEmpty
  bool get isNotNullNotEmpty => this != null && this!.isNotEmpty;
}

extension on String {
  bool get isEmail {
    return RegExp(
      r"^((([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$",
    ).hasMatch(this);
  }

  /// converts string into DateTime
  /// [format] is the pattern of the input string
  /// [locale] is the locale of the input string
  /// [isUtc] is whether the input string is utc or not
  DateTime? parseDateTime({
    String? format,
    Locale? locale,
    bool isUtc = false,
  }) {
    try {
      return DateFormat(format, locale?.languageCode).parse(this, isUtc);
    } catch (_) {
      return null;
    }
  }
}
