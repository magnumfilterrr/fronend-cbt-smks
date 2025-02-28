// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jawaban_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JawabanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String soalId, String jawaban) addJawaban,
    required TResult Function(String id) setAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String soalId, String jawaban)? addJawaban,
    TResult? Function(String id)? setAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String soalId, String jawaban)? addJawaban,
    TResult Function(String id)? setAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddJawaban value) addJawaban,
    required TResult Function(_SetAnswer value) setAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddJawaban value)? addJawaban,
    TResult? Function(_SetAnswer value)? setAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddJawaban value)? addJawaban,
    TResult Function(_SetAnswer value)? setAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JawabanEventCopyWith<$Res> {
  factory $JawabanEventCopyWith(
          JawabanEvent value, $Res Function(JawabanEvent) then) =
      _$JawabanEventCopyWithImpl<$Res, JawabanEvent>;
}

/// @nodoc
class _$JawabanEventCopyWithImpl<$Res, $Val extends JawabanEvent>
    implements $JawabanEventCopyWith<$Res> {
  _$JawabanEventCopyWithImpl(this._value, this._then);

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
    extends _$JawabanEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'JawabanEvent.started()';
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
    required TResult Function(String soalId, String jawaban) addJawaban,
    required TResult Function(String id) setAnswer,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String soalId, String jawaban)? addJawaban,
    TResult? Function(String id)? setAnswer,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String soalId, String jawaban)? addJawaban,
    TResult Function(String id)? setAnswer,
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
    required TResult Function(_AddJawaban value) addJawaban,
    required TResult Function(_SetAnswer value) setAnswer,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddJawaban value)? addJawaban,
    TResult? Function(_SetAnswer value)? setAnswer,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddJawaban value)? addJawaban,
    TResult Function(_SetAnswer value)? setAnswer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements JawabanEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddJawabanImplCopyWith<$Res> {
  factory _$$AddJawabanImplCopyWith(
          _$AddJawabanImpl value, $Res Function(_$AddJawabanImpl) then) =
      __$$AddJawabanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String soalId, String jawaban});
}

/// @nodoc
class __$$AddJawabanImplCopyWithImpl<$Res>
    extends _$JawabanEventCopyWithImpl<$Res, _$AddJawabanImpl>
    implements _$$AddJawabanImplCopyWith<$Res> {
  __$$AddJawabanImplCopyWithImpl(
      _$AddJawabanImpl _value, $Res Function(_$AddJawabanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soalId = null,
    Object? jawaban = null,
  }) {
    return _then(_$AddJawabanImpl(
      soalId: null == soalId
          ? _value.soalId
          : soalId // ignore: cast_nullable_to_non_nullable
              as String,
      jawaban: null == jawaban
          ? _value.jawaban
          : jawaban // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddJawabanImpl implements _AddJawaban {
  const _$AddJawabanImpl({required this.soalId, required this.jawaban});

  @override
  final String soalId;
  @override
  final String jawaban;

  @override
  String toString() {
    return 'JawabanEvent.addJawaban(soalId: $soalId, jawaban: $jawaban)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddJawabanImpl &&
            (identical(other.soalId, soalId) || other.soalId == soalId) &&
            (identical(other.jawaban, jawaban) || other.jawaban == jawaban));
  }

  @override
  int get hashCode => Object.hash(runtimeType, soalId, jawaban);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddJawabanImplCopyWith<_$AddJawabanImpl> get copyWith =>
      __$$AddJawabanImplCopyWithImpl<_$AddJawabanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String soalId, String jawaban) addJawaban,
    required TResult Function(String id) setAnswer,
  }) {
    return addJawaban(soalId, jawaban);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String soalId, String jawaban)? addJawaban,
    TResult? Function(String id)? setAnswer,
  }) {
    return addJawaban?.call(soalId, jawaban);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String soalId, String jawaban)? addJawaban,
    TResult Function(String id)? setAnswer,
    required TResult orElse(),
  }) {
    if (addJawaban != null) {
      return addJawaban(soalId, jawaban);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddJawaban value) addJawaban,
    required TResult Function(_SetAnswer value) setAnswer,
  }) {
    return addJawaban(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddJawaban value)? addJawaban,
    TResult? Function(_SetAnswer value)? setAnswer,
  }) {
    return addJawaban?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddJawaban value)? addJawaban,
    TResult Function(_SetAnswer value)? setAnswer,
    required TResult orElse(),
  }) {
    if (addJawaban != null) {
      return addJawaban(this);
    }
    return orElse();
  }
}

abstract class _AddJawaban implements JawabanEvent {
  const factory _AddJawaban(
      {required final String soalId,
      required final String jawaban}) = _$AddJawabanImpl;

  String get soalId;
  String get jawaban;
  @JsonKey(ignore: true)
  _$$AddJawabanImplCopyWith<_$AddJawabanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetAnswerImplCopyWith<$Res> {
  factory _$$SetAnswerImplCopyWith(
          _$SetAnswerImpl value, $Res Function(_$SetAnswerImpl) then) =
      __$$SetAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SetAnswerImplCopyWithImpl<$Res>
    extends _$JawabanEventCopyWithImpl<$Res, _$SetAnswerImpl>
    implements _$$SetAnswerImplCopyWith<$Res> {
  __$$SetAnswerImplCopyWithImpl(
      _$SetAnswerImpl _value, $Res Function(_$SetAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SetAnswerImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetAnswerImpl implements _SetAnswer {
  const _$SetAnswerImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'JawabanEvent.setAnswer(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetAnswerImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetAnswerImplCopyWith<_$SetAnswerImpl> get copyWith =>
      __$$SetAnswerImplCopyWithImpl<_$SetAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String soalId, String jawaban) addJawaban,
    required TResult Function(String id) setAnswer,
  }) {
    return setAnswer(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String soalId, String jawaban)? addJawaban,
    TResult? Function(String id)? setAnswer,
  }) {
    return setAnswer?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String soalId, String jawaban)? addJawaban,
    TResult Function(String id)? setAnswer,
    required TResult orElse(),
  }) {
    if (setAnswer != null) {
      return setAnswer(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddJawaban value) addJawaban,
    required TResult Function(_SetAnswer value) setAnswer,
  }) {
    return setAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddJawaban value)? addJawaban,
    TResult? Function(_SetAnswer value)? setAnswer,
  }) {
    return setAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddJawaban value)? addJawaban,
    TResult Function(_SetAnswer value)? setAnswer,
    required TResult orElse(),
  }) {
    if (setAnswer != null) {
      return setAnswer(this);
    }
    return orElse();
  }
}

abstract class _SetAnswer implements JawabanEvent {
  const factory _SetAnswer(final String id) = _$SetAnswerImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SetAnswerImplCopyWith<_$SetAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$JawabanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Map<String, dynamic>> jawabanList) success,
    required TResult Function(String message) error,
    required TResult Function(Map<String, dynamic> data) answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult? Function(String message)? error,
    TResult? Function(Map<String, dynamic> data)? answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult Function(String message)? error,
    TResult Function(Map<String, dynamic> data)? answered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
    required TResult Function(_Answered value) answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_Answered value)? answered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JawabanStateCopyWith<$Res> {
  factory $JawabanStateCopyWith(
          JawabanState value, $Res Function(JawabanState) then) =
      _$JawabanStateCopyWithImpl<$Res, JawabanState>;
}

/// @nodoc
class _$JawabanStateCopyWithImpl<$Res, $Val extends JawabanState>
    implements $JawabanStateCopyWith<$Res> {
  _$JawabanStateCopyWithImpl(this._value, this._then);

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
    extends _$JawabanStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'JawabanState.initial()';
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
    required TResult Function(List<Map<String, dynamic>> jawabanList) success,
    required TResult Function(String message) error,
    required TResult Function(Map<String, dynamic> data) answered,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult? Function(String message)? error,
    TResult? Function(Map<String, dynamic> data)? answered,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult Function(String message)? error,
    TResult Function(Map<String, dynamic> data)? answered,
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
    required TResult Function(_Answered value) answered,
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
    TResult? Function(_Answered value)? answered,
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
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JawabanState {
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
    extends _$JawabanStateCopyWithImpl<$Res, _$LoadingImpl>
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
    return 'JawabanState.loading()';
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
    required TResult Function(List<Map<String, dynamic>> jawabanList) success,
    required TResult Function(String message) error,
    required TResult Function(Map<String, dynamic> data) answered,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult? Function(String message)? error,
    TResult? Function(Map<String, dynamic> data)? answered,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult Function(String message)? error,
    TResult Function(Map<String, dynamic> data)? answered,
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
    required TResult Function(_Answered value) answered,
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
    TResult? Function(_Answered value)? answered,
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
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements JawabanState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> jawabanList});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$JawabanStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? jawabanList = null,
  }) {
    return _then(_$SuccessImpl(
      null == jawabanList
          ? _value._jawabanList
          : jawabanList // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(final List<Map<String, dynamic>> jawabanList)
      : _jawabanList = jawabanList;

  final List<Map<String, dynamic>> _jawabanList;
  @override
  List<Map<String, dynamic>> get jawabanList {
    if (_jawabanList is EqualUnmodifiableListView) return _jawabanList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_jawabanList);
  }

  @override
  String toString() {
    return 'JawabanState.success(jawabanList: $jawabanList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._jawabanList, _jawabanList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_jawabanList));

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
    required TResult Function(List<Map<String, dynamic>> jawabanList) success,
    required TResult Function(String message) error,
    required TResult Function(Map<String, dynamic> data) answered,
  }) {
    return success(jawabanList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult? Function(String message)? error,
    TResult? Function(Map<String, dynamic> data)? answered,
  }) {
    return success?.call(jawabanList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult Function(String message)? error,
    TResult Function(Map<String, dynamic> data)? answered,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(jawabanList);
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
    required TResult Function(_Answered value) answered,
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
    TResult? Function(_Answered value)? answered,
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
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements JawabanState {
  const factory _Success(final List<Map<String, dynamic>> jawabanList) =
      _$SuccessImpl;

  List<Map<String, dynamic>> get jawabanList;
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
    extends _$JawabanStateCopyWithImpl<$Res, _$ErrorImpl>
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
    return 'JawabanState.error(message: $message)';
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
    required TResult Function(List<Map<String, dynamic>> jawabanList) success,
    required TResult Function(String message) error,
    required TResult Function(Map<String, dynamic> data) answered,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult? Function(String message)? error,
    TResult? Function(Map<String, dynamic> data)? answered,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult Function(String message)? error,
    TResult Function(Map<String, dynamic> data)? answered,
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
    required TResult Function(_Answered value) answered,
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
    TResult? Function(_Answered value)? answered,
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
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements JawabanState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnsweredImplCopyWith<$Res> {
  factory _$$AnsweredImplCopyWith(
          _$AnsweredImpl value, $Res Function(_$AnsweredImpl) then) =
      __$$AnsweredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> data});
}

/// @nodoc
class __$$AnsweredImplCopyWithImpl<$Res>
    extends _$JawabanStateCopyWithImpl<$Res, _$AnsweredImpl>
    implements _$$AnsweredImplCopyWith<$Res> {
  __$$AnsweredImplCopyWithImpl(
      _$AnsweredImpl _value, $Res Function(_$AnsweredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$AnsweredImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$AnsweredImpl implements _Answered {
  const _$AnsweredImpl(final Map<String, dynamic> data) : _data = data;

  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'JawabanState.answered(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnsweredImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnsweredImplCopyWith<_$AnsweredImpl> get copyWith =>
      __$$AnsweredImplCopyWithImpl<_$AnsweredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Map<String, dynamic>> jawabanList) success,
    required TResult Function(String message) error,
    required TResult Function(Map<String, dynamic> data) answered,
  }) {
    return answered(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult? Function(String message)? error,
    TResult? Function(Map<String, dynamic> data)? answered,
  }) {
    return answered?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Map<String, dynamic>> jawabanList)? success,
    TResult Function(String message)? error,
    TResult Function(Map<String, dynamic> data)? answered,
    required TResult orElse(),
  }) {
    if (answered != null) {
      return answered(data);
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
    required TResult Function(_Answered value) answered,
  }) {
    return answered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Error value)? error,
    TResult? Function(_Answered value)? answered,
  }) {
    return answered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    TResult Function(_Answered value)? answered,
    required TResult orElse(),
  }) {
    if (answered != null) {
      return answered(this);
    }
    return orElse();
  }
}

abstract class _Answered implements JawabanState {
  const factory _Answered(final Map<String, dynamic> data) = _$AnsweredImpl;

  Map<String, dynamic> get data;
  @JsonKey(ignore: true)
  _$$AnsweredImplCopyWith<_$AnsweredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
