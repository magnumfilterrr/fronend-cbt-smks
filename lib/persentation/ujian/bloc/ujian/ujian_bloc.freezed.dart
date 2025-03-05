// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ujian_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UjianEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUjian,
    required TResult Function(String id) checkStatus,
    required TResult Function(String id, String status) updateStatusUjian,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUjian,
    TResult? Function(String id)? checkStatus,
    TResult? Function(String id, String status)? updateStatusUjian,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUjian,
    TResult Function(String id)? checkStatus,
    TResult Function(String id, String status)? updateStatusUjian,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllUjian value) getAllUjian,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_UpdateStatusUjian value) updateStatusUjian,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllUjian value)? getAllUjian,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_UpdateStatusUjian value)? updateStatusUjian,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllUjian value)? getAllUjian,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_UpdateStatusUjian value)? updateStatusUjian,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UjianEventCopyWith<$Res> {
  factory $UjianEventCopyWith(
          UjianEvent value, $Res Function(UjianEvent) then) =
      _$UjianEventCopyWithImpl<$Res, UjianEvent>;
}

/// @nodoc
class _$UjianEventCopyWithImpl<$Res, $Val extends UjianEvent>
    implements $UjianEventCopyWith<$Res> {
  _$UjianEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UjianEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UjianEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUjian,
    required TResult Function(String id) checkStatus,
    required TResult Function(String id, String status) updateStatusUjian,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUjian,
    TResult? Function(String id)? checkStatus,
    TResult? Function(String id, String status)? updateStatusUjian,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUjian,
    TResult Function(String id)? checkStatus,
    TResult Function(String id, String status)? updateStatusUjian,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllUjian value) getAllUjian,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_UpdateStatusUjian value) updateStatusUjian,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllUjian value)? getAllUjian,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_UpdateStatusUjian value)? updateStatusUjian,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllUjian value)? getAllUjian,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_UpdateStatusUjian value)? updateStatusUjian,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UjianEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetAllUjianImplCopyWith<$Res> {
  factory _$$GetAllUjianImplCopyWith(
          _$GetAllUjianImpl value, $Res Function(_$GetAllUjianImpl) then) =
      __$$GetAllUjianImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllUjianImplCopyWithImpl<$Res>
    extends _$UjianEventCopyWithImpl<$Res, _$GetAllUjianImpl>
    implements _$$GetAllUjianImplCopyWith<$Res> {
  __$$GetAllUjianImplCopyWithImpl(
      _$GetAllUjianImpl _value, $Res Function(_$GetAllUjianImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllUjianImpl implements _GetAllUjian {
  const _$GetAllUjianImpl();

  @override
  String toString() {
    return 'UjianEvent.getAllUjian()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllUjianImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUjian,
    required TResult Function(String id) checkStatus,
    required TResult Function(String id, String status) updateStatusUjian,
  }) {
    return getAllUjian();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUjian,
    TResult? Function(String id)? checkStatus,
    TResult? Function(String id, String status)? updateStatusUjian,
  }) {
    return getAllUjian?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUjian,
    TResult Function(String id)? checkStatus,
    TResult Function(String id, String status)? updateStatusUjian,
    required TResult orElse(),
  }) {
    if (getAllUjian != null) {
      return getAllUjian();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllUjian value) getAllUjian,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_UpdateStatusUjian value) updateStatusUjian,
  }) {
    return getAllUjian(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllUjian value)? getAllUjian,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_UpdateStatusUjian value)? updateStatusUjian,
  }) {
    return getAllUjian?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllUjian value)? getAllUjian,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_UpdateStatusUjian value)? updateStatusUjian,
    required TResult orElse(),
  }) {
    if (getAllUjian != null) {
      return getAllUjian(this);
    }
    return orElse();
  }
}

abstract class _GetAllUjian implements UjianEvent {
  const factory _GetAllUjian() = _$GetAllUjianImpl;
}

/// @nodoc
abstract class _$$CheckStatusImplCopyWith<$Res> {
  factory _$$CheckStatusImplCopyWith(
          _$CheckStatusImpl value, $Res Function(_$CheckStatusImpl) then) =
      __$$CheckStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$CheckStatusImplCopyWithImpl<$Res>
    extends _$UjianEventCopyWithImpl<$Res, _$CheckStatusImpl>
    implements _$$CheckStatusImplCopyWith<$Res> {
  __$$CheckStatusImplCopyWithImpl(
      _$CheckStatusImpl _value, $Res Function(_$CheckStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CheckStatusImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckStatusImpl implements _CheckStatus {
  const _$CheckStatusImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'UjianEvent.checkStatus(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckStatusImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckStatusImplCopyWith<_$CheckStatusImpl> get copyWith =>
      __$$CheckStatusImplCopyWithImpl<_$CheckStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUjian,
    required TResult Function(String id) checkStatus,
    required TResult Function(String id, String status) updateStatusUjian,
  }) {
    return checkStatus(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUjian,
    TResult? Function(String id)? checkStatus,
    TResult? Function(String id, String status)? updateStatusUjian,
  }) {
    return checkStatus?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUjian,
    TResult Function(String id)? checkStatus,
    TResult Function(String id, String status)? updateStatusUjian,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllUjian value) getAllUjian,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_UpdateStatusUjian value) updateStatusUjian,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllUjian value)? getAllUjian,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_UpdateStatusUjian value)? updateStatusUjian,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllUjian value)? getAllUjian,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_UpdateStatusUjian value)? updateStatusUjian,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckStatus implements UjianEvent {
  const factory _CheckStatus(final String id) = _$CheckStatusImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$CheckStatusImplCopyWith<_$CheckStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateStatusUjianImplCopyWith<$Res> {
  factory _$$UpdateStatusUjianImplCopyWith(_$UpdateStatusUjianImpl value,
          $Res Function(_$UpdateStatusUjianImpl) then) =
      __$$UpdateStatusUjianImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String status});
}

/// @nodoc
class __$$UpdateStatusUjianImplCopyWithImpl<$Res>
    extends _$UjianEventCopyWithImpl<$Res, _$UpdateStatusUjianImpl>
    implements _$$UpdateStatusUjianImplCopyWith<$Res> {
  __$$UpdateStatusUjianImplCopyWithImpl(_$UpdateStatusUjianImpl _value,
      $Res Function(_$UpdateStatusUjianImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
  }) {
    return _then(_$UpdateStatusUjianImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateStatusUjianImpl implements _UpdateStatusUjian {
  const _$UpdateStatusUjianImpl(this.id, this.status);

  @override
  final String id;
  @override
  final String status;

  @override
  String toString() {
    return 'UjianEvent.updateStatusUjian(id: $id, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusUjianImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusUjianImplCopyWith<_$UpdateStatusUjianImpl> get copyWith =>
      __$$UpdateStatusUjianImplCopyWithImpl<_$UpdateStatusUjianImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getAllUjian,
    required TResult Function(String id) checkStatus,
    required TResult Function(String id, String status) updateStatusUjian,
  }) {
    return updateStatusUjian(id, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getAllUjian,
    TResult? Function(String id)? checkStatus,
    TResult? Function(String id, String status)? updateStatusUjian,
  }) {
    return updateStatusUjian?.call(id, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getAllUjian,
    TResult Function(String id)? checkStatus,
    TResult Function(String id, String status)? updateStatusUjian,
    required TResult orElse(),
  }) {
    if (updateStatusUjian != null) {
      return updateStatusUjian(id, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetAllUjian value) getAllUjian,
    required TResult Function(_CheckStatus value) checkStatus,
    required TResult Function(_UpdateStatusUjian value) updateStatusUjian,
  }) {
    return updateStatusUjian(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetAllUjian value)? getAllUjian,
    TResult? Function(_CheckStatus value)? checkStatus,
    TResult? Function(_UpdateStatusUjian value)? updateStatusUjian,
  }) {
    return updateStatusUjian?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetAllUjian value)? getAllUjian,
    TResult Function(_CheckStatus value)? checkStatus,
    TResult Function(_UpdateStatusUjian value)? updateStatusUjian,
    required TResult orElse(),
  }) {
    if (updateStatusUjian != null) {
      return updateStatusUjian(this);
    }
    return orElse();
  }
}

abstract class _UpdateStatusUjian implements UjianEvent {
  const factory _UpdateStatusUjian(final String id, final String status) =
      _$UpdateStatusUjianImpl;

  String get id;
  String get status;
  @JsonKey(ignore: true)
  _$$UpdateStatusUjianImplCopyWith<_$UpdateStatusUjianImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UjianState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UjianResponseModel ujian) success,
    required TResult Function(String message) error,
    required TResult Function(String status) statusLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UjianResponseModel ujian)? success,
    TResult? Function(String message)? error,
    TResult? Function(String status)? statusLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UjianResponseModel ujian)? success,
    TResult Function(String message)? error,
    TResult Function(String status)? statusLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_StatusLoaded value) statusLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_StatusLoaded value)? statusLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_StatusLoaded value)? statusLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UjianStateCopyWith<$Res> {
  factory $UjianStateCopyWith(
          UjianState value, $Res Function(UjianState) then) =
      _$UjianStateCopyWithImpl<$Res, UjianState>;
}

/// @nodoc
class _$UjianStateCopyWithImpl<$Res, $Val extends UjianState>
    implements $UjianStateCopyWith<$Res> {
  _$UjianStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UjianStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UjianState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UjianResponseModel ujian) success,
    required TResult Function(String message) error,
    required TResult Function(String status) statusLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UjianResponseModel ujian)? success,
    TResult? Function(String message)? error,
    TResult? Function(String status)? statusLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UjianResponseModel ujian)? success,
    TResult Function(String message)? error,
    TResult Function(String status)? statusLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_StatusLoaded value) statusLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_StatusLoaded value)? statusLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_StatusLoaded value)? statusLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UjianState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UjianStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UjianState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UjianResponseModel ujian) success,
    required TResult Function(String message) error,
    required TResult Function(String status) statusLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UjianResponseModel ujian)? success,
    TResult? Function(String message)? error,
    TResult? Function(String status)? statusLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UjianResponseModel ujian)? success,
    TResult Function(String message)? error,
    TResult Function(String status)? statusLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_StatusLoaded value) statusLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_StatusLoaded value)? statusLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_StatusLoaded value)? statusLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UjianState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UjianResponseModel ujian});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$UjianStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ujian = null,
  }) {
    return _then(_$SuccessImpl(
      null == ujian
          ? _value.ujian
          : ujian // ignore: cast_nullable_to_non_nullable
              as UjianResponseModel,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.ujian);

  @override
  final UjianResponseModel ujian;

  @override
  String toString() {
    return 'UjianState.success(ujian: $ujian)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.ujian, ujian) || other.ujian == ujian));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ujian);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UjianResponseModel ujian) success,
    required TResult Function(String message) error,
    required TResult Function(String status) statusLoaded,
  }) {
    return success(ujian);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UjianResponseModel ujian)? success,
    TResult? Function(String message)? error,
    TResult? Function(String status)? statusLoaded,
  }) {
    return success?.call(ujian);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UjianResponseModel ujian)? success,
    TResult Function(String message)? error,
    TResult Function(String status)? statusLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(ujian);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_StatusLoaded value) statusLoaded,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_StatusLoaded value)? statusLoaded,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_StatusLoaded value)? statusLoaded,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements UjianState {
  const factory _Success(final UjianResponseModel ujian) = _$SuccessImpl;

  UjianResponseModel get ujian;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UjianStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UjianState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UjianResponseModel ujian) success,
    required TResult Function(String message) error,
    required TResult Function(String status) statusLoaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UjianResponseModel ujian)? success,
    TResult? Function(String message)? error,
    TResult? Function(String status)? statusLoaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UjianResponseModel ujian)? success,
    TResult Function(String message)? error,
    TResult Function(String status)? statusLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_StatusLoaded value) statusLoaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_StatusLoaded value)? statusLoaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_StatusLoaded value)? statusLoaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UjianState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusLoadedImplCopyWith<$Res> {
  factory _$$StatusLoadedImplCopyWith(
          _$StatusLoadedImpl value, $Res Function(_$StatusLoadedImpl) then) =
      __$$StatusLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String status});
}

/// @nodoc
class __$$StatusLoadedImplCopyWithImpl<$Res>
    extends _$UjianStateCopyWithImpl<$Res, _$StatusLoadedImpl>
    implements _$$StatusLoadedImplCopyWith<$Res> {
  __$$StatusLoadedImplCopyWithImpl(
      _$StatusLoadedImpl _value, $Res Function(_$StatusLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$StatusLoadedImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StatusLoadedImpl implements _StatusLoaded {
  const _$StatusLoadedImpl(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'UjianState.statusLoaded(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusLoadedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusLoadedImplCopyWith<_$StatusLoadedImpl> get copyWith =>
      __$$StatusLoadedImplCopyWithImpl<_$StatusLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UjianResponseModel ujian) success,
    required TResult Function(String message) error,
    required TResult Function(String status) statusLoaded,
  }) {
    return statusLoaded(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UjianResponseModel ujian)? success,
    TResult? Function(String message)? error,
    TResult? Function(String status)? statusLoaded,
  }) {
    return statusLoaded?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UjianResponseModel ujian)? success,
    TResult Function(String message)? error,
    TResult Function(String status)? statusLoaded,
    required TResult orElse(),
  }) {
    if (statusLoaded != null) {
      return statusLoaded(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_StatusLoaded value) statusLoaded,
  }) {
    return statusLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_StatusLoaded value)? statusLoaded,
  }) {
    return statusLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_StatusLoaded value)? statusLoaded,
    required TResult orElse(),
  }) {
    if (statusLoaded != null) {
      return statusLoaded(this);
    }
    return orElse();
  }
}

abstract class _StatusLoaded implements UjianState {
  const factory _StatusLoaded(final String status) = _$StatusLoadedImpl;

  String get status;
  @JsonKey(ignore: true)
  _$$StatusLoadedImplCopyWith<_$StatusLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
