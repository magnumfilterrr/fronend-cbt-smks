// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daftar_soal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DaftarSoalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ujianId) started,
    required TResult Function(String ujianId) getDafatarSoal,
    required TResult Function() nextSoal,
    required TResult Function() prevSoal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ujianId)? started,
    TResult? Function(String ujianId)? getDafatarSoal,
    TResult? Function()? nextSoal,
    TResult? Function()? prevSoal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ujianId)? started,
    TResult Function(String ujianId)? getDafatarSoal,
    TResult Function()? nextSoal,
    TResult Function()? prevSoal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDaftarSoal value) getDafatarSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_PrevSoal value) prevSoal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_PrevSoal value)? prevSoal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_PrevSoal value)? prevSoal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaftarSoalEventCopyWith<$Res> {
  factory $DaftarSoalEventCopyWith(
          DaftarSoalEvent value, $Res Function(DaftarSoalEvent) then) =
      _$DaftarSoalEventCopyWithImpl<$Res, DaftarSoalEvent>;
}

/// @nodoc
class _$DaftarSoalEventCopyWithImpl<$Res, $Val extends DaftarSoalEvent>
    implements $DaftarSoalEventCopyWith<$Res> {
  _$DaftarSoalEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String ujianId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$DaftarSoalEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ujianId = null,
  }) {
    return _then(_$StartedImpl(
      null == ujianId
          ? _value.ujianId
          : ujianId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.ujianId);

  @override
  final String ujianId;

  @override
  String toString() {
    return 'DaftarSoalEvent.started(ujianId: $ujianId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.ujianId, ujianId) || other.ujianId == ujianId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ujianId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ujianId) started,
    required TResult Function(String ujianId) getDafatarSoal,
    required TResult Function() nextSoal,
    required TResult Function() prevSoal,
  }) {
    return started(ujianId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ujianId)? started,
    TResult? Function(String ujianId)? getDafatarSoal,
    TResult? Function()? nextSoal,
    TResult? Function()? prevSoal,
  }) {
    return started?.call(ujianId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ujianId)? started,
    TResult Function(String ujianId)? getDafatarSoal,
    TResult Function()? nextSoal,
    TResult Function()? prevSoal,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(ujianId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDaftarSoal value) getDafatarSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_PrevSoal value) prevSoal,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_PrevSoal value)? prevSoal,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_PrevSoal value)? prevSoal,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DaftarSoalEvent {
  const factory _Started(final String ujianId) = _$StartedImpl;

  String get ujianId;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDaftarSoalImplCopyWith<$Res> {
  factory _$$GetDaftarSoalImplCopyWith(
          _$GetDaftarSoalImpl value, $Res Function(_$GetDaftarSoalImpl) then) =
      __$$GetDaftarSoalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ujianId});
}

/// @nodoc
class __$$GetDaftarSoalImplCopyWithImpl<$Res>
    extends _$DaftarSoalEventCopyWithImpl<$Res, _$GetDaftarSoalImpl>
    implements _$$GetDaftarSoalImplCopyWith<$Res> {
  __$$GetDaftarSoalImplCopyWithImpl(
      _$GetDaftarSoalImpl _value, $Res Function(_$GetDaftarSoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ujianId = null,
  }) {
    return _then(_$GetDaftarSoalImpl(
      null == ujianId
          ? _value.ujianId
          : ujianId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDaftarSoalImpl implements _GetDaftarSoal {
  const _$GetDaftarSoalImpl(this.ujianId);

  @override
  final String ujianId;

  @override
  String toString() {
    return 'DaftarSoalEvent.getDafatarSoal(ujianId: $ujianId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDaftarSoalImpl &&
            (identical(other.ujianId, ujianId) || other.ujianId == ujianId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ujianId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDaftarSoalImplCopyWith<_$GetDaftarSoalImpl> get copyWith =>
      __$$GetDaftarSoalImplCopyWithImpl<_$GetDaftarSoalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ujianId) started,
    required TResult Function(String ujianId) getDafatarSoal,
    required TResult Function() nextSoal,
    required TResult Function() prevSoal,
  }) {
    return getDafatarSoal(ujianId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ujianId)? started,
    TResult? Function(String ujianId)? getDafatarSoal,
    TResult? Function()? nextSoal,
    TResult? Function()? prevSoal,
  }) {
    return getDafatarSoal?.call(ujianId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ujianId)? started,
    TResult Function(String ujianId)? getDafatarSoal,
    TResult Function()? nextSoal,
    TResult Function()? prevSoal,
    required TResult orElse(),
  }) {
    if (getDafatarSoal != null) {
      return getDafatarSoal(ujianId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDaftarSoal value) getDafatarSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_PrevSoal value) prevSoal,
  }) {
    return getDafatarSoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_PrevSoal value)? prevSoal,
  }) {
    return getDafatarSoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_PrevSoal value)? prevSoal,
    required TResult orElse(),
  }) {
    if (getDafatarSoal != null) {
      return getDafatarSoal(this);
    }
    return orElse();
  }
}

abstract class _GetDaftarSoal implements DaftarSoalEvent {
  const factory _GetDaftarSoal(final String ujianId) = _$GetDaftarSoalImpl;

  String get ujianId;
  @JsonKey(ignore: true)
  _$$GetDaftarSoalImplCopyWith<_$GetDaftarSoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextSoalImplCopyWith<$Res> {
  factory _$$NextSoalImplCopyWith(
          _$NextSoalImpl value, $Res Function(_$NextSoalImpl) then) =
      __$$NextSoalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextSoalImplCopyWithImpl<$Res>
    extends _$DaftarSoalEventCopyWithImpl<$Res, _$NextSoalImpl>
    implements _$$NextSoalImplCopyWith<$Res> {
  __$$NextSoalImplCopyWithImpl(
      _$NextSoalImpl _value, $Res Function(_$NextSoalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NextSoalImpl implements _NextSoal {
  const _$NextSoalImpl();

  @override
  String toString() {
    return 'DaftarSoalEvent.nextSoal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextSoalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ujianId) started,
    required TResult Function(String ujianId) getDafatarSoal,
    required TResult Function() nextSoal,
    required TResult Function() prevSoal,
  }) {
    return nextSoal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ujianId)? started,
    TResult? Function(String ujianId)? getDafatarSoal,
    TResult? Function()? nextSoal,
    TResult? Function()? prevSoal,
  }) {
    return nextSoal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ujianId)? started,
    TResult Function(String ujianId)? getDafatarSoal,
    TResult Function()? nextSoal,
    TResult Function()? prevSoal,
    required TResult orElse(),
  }) {
    if (nextSoal != null) {
      return nextSoal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDaftarSoal value) getDafatarSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_PrevSoal value) prevSoal,
  }) {
    return nextSoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_PrevSoal value)? prevSoal,
  }) {
    return nextSoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_PrevSoal value)? prevSoal,
    required TResult orElse(),
  }) {
    if (nextSoal != null) {
      return nextSoal(this);
    }
    return orElse();
  }
}

abstract class _NextSoal implements DaftarSoalEvent {
  const factory _NextSoal() = _$NextSoalImpl;
}

/// @nodoc
abstract class _$$PrevSoalImplCopyWith<$Res> {
  factory _$$PrevSoalImplCopyWith(
          _$PrevSoalImpl value, $Res Function(_$PrevSoalImpl) then) =
      __$$PrevSoalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PrevSoalImplCopyWithImpl<$Res>
    extends _$DaftarSoalEventCopyWithImpl<$Res, _$PrevSoalImpl>
    implements _$$PrevSoalImplCopyWith<$Res> {
  __$$PrevSoalImplCopyWithImpl(
      _$PrevSoalImpl _value, $Res Function(_$PrevSoalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PrevSoalImpl implements _PrevSoal {
  const _$PrevSoalImpl();

  @override
  String toString() {
    return 'DaftarSoalEvent.prevSoal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PrevSoalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ujianId) started,
    required TResult Function(String ujianId) getDafatarSoal,
    required TResult Function() nextSoal,
    required TResult Function() prevSoal,
  }) {
    return prevSoal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ujianId)? started,
    TResult? Function(String ujianId)? getDafatarSoal,
    TResult? Function()? nextSoal,
    TResult? Function()? prevSoal,
  }) {
    return prevSoal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ujianId)? started,
    TResult Function(String ujianId)? getDafatarSoal,
    TResult Function()? nextSoal,
    TResult Function()? prevSoal,
    required TResult orElse(),
  }) {
    if (prevSoal != null) {
      return prevSoal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDaftarSoal value) getDafatarSoal,
    required TResult Function(_NextSoal value) nextSoal,
    required TResult Function(_PrevSoal value) prevSoal,
  }) {
    return prevSoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult? Function(_NextSoal value)? nextSoal,
    TResult? Function(_PrevSoal value)? prevSoal,
  }) {
    return prevSoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDaftarSoal value)? getDafatarSoal,
    TResult Function(_NextSoal value)? nextSoal,
    TResult Function(_PrevSoal value)? prevSoal,
    required TResult orElse(),
  }) {
    if (prevSoal != null) {
      return prevSoal(this);
    }
    return orElse();
  }
}

abstract class _PrevSoal implements DaftarSoalEvent {
  const factory _PrevSoal() = _$PrevSoalImpl;
}

/// @nodoc
mixin _$DaftarSoalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<Soal> data, int index, bool isNext, bool isPrev)
        success,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaftarSoalStateCopyWith<$Res> {
  factory $DaftarSoalStateCopyWith(
          DaftarSoalState value, $Res Function(DaftarSoalState) then) =
      _$DaftarSoalStateCopyWithImpl<$Res, DaftarSoalState>;
}

/// @nodoc
class _$DaftarSoalStateCopyWithImpl<$Res, $Val extends DaftarSoalState>
    implements $DaftarSoalStateCopyWith<$Res> {
  _$DaftarSoalStateCopyWithImpl(this._value, this._then);

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
    extends _$DaftarSoalStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'DaftarSoalState.initial()';
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
    required TResult Function(
            List<Soal> data, int index, bool isNext, bool isPrev)
        success,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult Function(String message)? error,
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
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DaftarSoalState {
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
    extends _$DaftarSoalStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'DaftarSoalState.loading()';
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
    required TResult Function(
            List<Soal> data, int index, bool isNext, bool isPrev)
        success,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult Function(String message)? error,
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
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DaftarSoalState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Soal> data, int index, bool isNext, bool isPrev});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$DaftarSoalStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? index = null,
    Object? isNext = null,
    Object? isPrev = null,
  }) {
    return _then(_$SuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Soal>,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == isNext
          ? _value.isNext
          : isNext // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isPrev
          ? _value.isPrev
          : isPrev // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      final List<Soal> data, this.index, this.isNext, this.isPrev)
      : _data = data;

  final List<Soal> _data;
  @override
  List<Soal> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final int index;
  @override
  final bool isNext;
  @override
  final bool isPrev;

  @override
  String toString() {
    return 'DaftarSoalState.success(data: $data, index: $index, isNext: $isNext, isPrev: $isPrev)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isNext, isNext) || other.isNext == isNext) &&
            (identical(other.isPrev, isPrev) || other.isPrev == isPrev));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_data), index, isNext, isPrev);

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
    required TResult Function(
            List<Soal> data, int index, bool isNext, bool isPrev)
        success,
    required TResult Function(String message) error,
  }) {
    return success(data, index, isNext, isPrev);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult? Function(String message)? error,
  }) {
    return success?.call(data, index, isNext, isPrev);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, index, isNext, isPrev);
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
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements DaftarSoalState {
  const factory _Success(final List<Soal> data, final int index,
      final bool isNext, final bool isPrev) = _$SuccessImpl;

  List<Soal> get data;
  int get index;
  bool get isNext;
  bool get isPrev;
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
    extends _$DaftarSoalStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'DaftarSoalState.error(message: $message)';
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
    required TResult Function(
            List<Soal> data, int index, bool isNext, bool isPrev)
        success,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Soal> data, int index, bool isNext, bool isPrev)?
        success,
    TResult Function(String message)? error,
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
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DaftarSoalState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
