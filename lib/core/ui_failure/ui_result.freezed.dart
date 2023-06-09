// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UiResult<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(ErrorType type, String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(ErrorType type, String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ErrorType type, String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiSuccess<T> value) success,
    required TResult Function(UiFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiSuccess<T> value)? success,
    TResult? Function(UiFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiSuccess<T> value)? success,
    TResult Function(UiFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiResultCopyWith<T, $Res> {
  factory $UiResultCopyWith(
          UiResult<T> value, $Res Function(UiResult<T>) then) =
      _$UiResultCopyWithImpl<T, $Res, UiResult<T>>;
}

/// @nodoc
class _$UiResultCopyWithImpl<T, $Res, $Val extends UiResult<T>>
    implements $UiResultCopyWith<T, $Res> {
  _$UiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UiSuccessCopyWith<T, $Res> {
  factory _$$UiSuccessCopyWith(
          _$UiSuccess<T> value, $Res Function(_$UiSuccess<T>) then) =
      __$$UiSuccessCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$UiSuccessCopyWithImpl<T, $Res>
    extends _$UiResultCopyWithImpl<T, $Res, _$UiSuccess<T>>
    implements _$$UiSuccessCopyWith<T, $Res> {
  __$$UiSuccessCopyWithImpl(
      _$UiSuccess<T> _value, $Res Function(_$UiSuccess<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UiSuccess<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UiSuccess<T> implements UiSuccess<T> {
  const _$UiSuccess(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'UiResult<$T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiSuccess<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiSuccessCopyWith<T, _$UiSuccess<T>> get copyWith =>
      __$$UiSuccessCopyWithImpl<T, _$UiSuccess<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(ErrorType type, String? message) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(ErrorType type, String? message)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ErrorType type, String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiSuccess<T> value) success,
    required TResult Function(UiFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiSuccess<T> value)? success,
    TResult? Function(UiFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiSuccess<T> value)? success,
    TResult Function(UiFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UiSuccess<T> implements UiResult<T> {
  const factory UiSuccess(final T data) = _$UiSuccess<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$UiSuccessCopyWith<T, _$UiSuccess<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UiFailureCopyWith<T, $Res> {
  factory _$$UiFailureCopyWith(
          _$UiFailure<T> value, $Res Function(_$UiFailure<T>) then) =
      __$$UiFailureCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ErrorType type, String? message});
}

/// @nodoc
class __$$UiFailureCopyWithImpl<T, $Res>
    extends _$UiResultCopyWithImpl<T, $Res, _$UiFailure<T>>
    implements _$$UiFailureCopyWith<T, $Res> {
  __$$UiFailureCopyWithImpl(
      _$UiFailure<T> _value, $Res Function(_$UiFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? message = freezed,
  }) {
    return _then(_$UiFailure<T>(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ErrorType,
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UiFailure<T> implements UiFailure<T> {
  const _$UiFailure(this.type, [this.message]);

  @override
  final ErrorType type;
  @override
  final String? message;

  @override
  String toString() {
    return 'UiResult<$T>.failure(type: $type, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiFailure<T> &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UiFailureCopyWith<T, _$UiFailure<T>> get copyWith =>
      __$$UiFailureCopyWithImpl<T, _$UiFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(ErrorType type, String? message) failure,
  }) {
    return failure(type, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(ErrorType type, String? message)? failure,
  }) {
    return failure?.call(type, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(ErrorType type, String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(type, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UiSuccess<T> value) success,
    required TResult Function(UiFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UiSuccess<T> value)? success,
    TResult? Function(UiFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UiSuccess<T> value)? success,
    TResult Function(UiFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UiFailure<T> implements UiResult<T> {
  const factory UiFailure(final ErrorType type, [final String? message]) =
      _$UiFailure<T>;

  ErrorType get type;
  String? get message;
  @JsonKey(ignore: true)
  _$$UiFailureCopyWith<T, _$UiFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
