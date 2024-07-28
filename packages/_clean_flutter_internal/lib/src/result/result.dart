import 'package:_clean_flutter_internal/_clean_flutter_internal.dart';
import 'package:equatable/equatable.dart';

/// A sealed class to represent the result of an operation.
///
/// It can be either a [Result.success] with a value of type [T]
/// or a [Result.error] with a [BaseError].
///
sealed class Result<T> {
  const Result._();

  /// A successful result with a value of type [T].
  factory Result.success(T value) = _SuccessResult<T>;

  /// A failed result with a [BaseError].
  factory Result.error(BaseError error) = _ErrorResult<T>;

  /// Returns the result of applying one of the functions to this result.
  R fold<R>(
    R Function(BaseError failure) onError,
    R Function(T value) onSuccess,
  );

  /// Returns `true` if this is a [Result.success].
  bool get isSuccess => this is _SuccessResult<T>;

  /// Returns `true` if this is a [Result.error].
  bool get isError => this is _ErrorResult<T>;

  /// Returns the value if this is a [Result.success] or `null` otherwise.
  T? getOrNull() => fold((_) => null, (value) => value);

  /// Returns the error if this is a [Result.error] or `null` otherwise.
  BaseError? errorOrNull() => fold((error) => error, (_) => null);

  /// map result
  Result<R> map<R>(R Function(T value) func) {
    return fold(Result.error, (value) => successResult(func(value)));
  }

  /// flat map result
  Result<R> flatMap<R>(Result<R> Function(T value) func) {
    return fold(Result.error, func);
  }

  /// async flat map result
  FutureResult<R> asyncFlatMap<R>(
    FutureResult<R> Function(T value) func,
  ) async {
    return fold(Result.error, func);
  }

  /// Constructs a Result from a Future. If the Future completes successfully,
  /// the Result is a success with the value of the Future. If the Future fails,
  /// the Result is an error with the error of the Future.
  static FutureResult<R> fromAsync<R, T>(
    Future<T> Function() func, {
    R Function(T result)? onSuccess,
    BaseError Function(Object exception, StackTrace stackTrace)? onError,
  }) async {
    try {
      final result = await func();
      if (onSuccess != null) {
        return successResult(onSuccess(result));
      }
      return successResult(result.cast<R>());
    } catch (exception, stackTrace) {
      if (onError != null) {
        return errorResult(onError(exception, stackTrace));
      }
      return errorResult(BaseError.fromError(exception, stackTrace));
    }
  }

  /// Constructs a Result from a function. If the function completes successfully,
  /// the Result is a success with the value of the function. If the function fails,
  /// the Result is an error with the error of the function.
  static Result<R> from<R, T>(
    T Function() func, {
    R Function(T result)? onSuccess,
    BaseError Function(Object error, StackTrace stackTrace)? onError,
  }) {
    try {
      final result = func();
      if (onSuccess != null) {
        return successResult(onSuccess(result));
      }
      return successResult(result.cast<R>());
    } catch (error, stackTrace) {
      if (onError != null) {
        return errorResult(onError(error, stackTrace));
      }
      return errorResult(BaseError.fromError(error, stackTrace));
    }
  }

  /// Constructs a Result by testing a condition. If the condition is true,
  /// the Result is a success with a certain value. If the condition is false,
  /// the Result is an error with a certain error.
  static Result<R> fromPredicate<R>(
    bool Function() predicate,
    R Function() onSuccess,
    BaseError Function() onError,
  ) {
    if (predicate()) {
      return successResult(onSuccess());
    } else {
      return errorResult(onError());
    }
  }
}

/// A successful result with a value of type [T].
class _SuccessResult<T> extends Result<T> with EquatableMixin {
  _SuccessResult(this.value) : super._();

  /// The value of the result.
  final T value;

  @override
  R fold<R>(
    R Function(BaseError error) onError,
    R Function(T value) onSuccess,
  ) {
    return onSuccess(value);
  }

  @override
  List<Object?> get props => [value];
}

/// A failed result with a [BaseError].
class _ErrorResult<T> extends Result<T> with EquatableMixin {
  _ErrorResult(this.error) : super._();

  /// The error of the result.
  final BaseError error;

  @override
  R fold<R>(
    R Function(BaseError error) onError,
    R Function(T value) onSuccess,
  ) {
    return onError(error);
  }

  @override
  List<Object?> get props => [error];
}

/// Returns a successful result with a value of type [T].
Result<T> successResult<T>(T data) => _SuccessResult(data);

/// Returns a failed result with a [BaseError].
Result<T> errorResult<T>(BaseError error) => _ErrorResult(error);

extension on Object? {
  R cast<R>() {
    try {
      return this as R;
    } catch (_) {
      throw FormatException('Failed to cast $runtimeType to ${R.runtimeType}');
    }
  }
}
