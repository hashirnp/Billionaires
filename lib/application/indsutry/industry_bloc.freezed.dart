// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'industry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IndustryEventTearOff {
  const _$IndustryEventTearOff();

  _InitialEvent initialEvent({required String indsutryQuery}) {
    return _InitialEvent(
      indsutryQuery: indsutryQuery,
    );
  }
}

/// @nodoc
const $IndustryEvent = _$IndustryEventTearOff();

/// @nodoc
mixin _$IndustryEvent {
  String get indsutryQuery => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indsutryQuery) initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String indsutryQuery)? initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indsutryQuery)? initialEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndustryEventCopyWith<IndustryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryEventCopyWith<$Res> {
  factory $IndustryEventCopyWith(
          IndustryEvent value, $Res Function(IndustryEvent) then) =
      _$IndustryEventCopyWithImpl<$Res>;
  $Res call({String indsutryQuery});
}

/// @nodoc
class _$IndustryEventCopyWithImpl<$Res>
    implements $IndustryEventCopyWith<$Res> {
  _$IndustryEventCopyWithImpl(this._value, this._then);

  final IndustryEvent _value;
  // ignore: unused_field
  final $Res Function(IndustryEvent) _then;

  @override
  $Res call({
    Object? indsutryQuery = freezed,
  }) {
    return _then(_value.copyWith(
      indsutryQuery: indsutryQuery == freezed
          ? _value.indsutryQuery
          : indsutryQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialEventCopyWith<$Res>
    implements $IndustryEventCopyWith<$Res> {
  factory _$InitialEventCopyWith(
          _InitialEvent value, $Res Function(_InitialEvent) then) =
      __$InitialEventCopyWithImpl<$Res>;
  @override
  $Res call({String indsutryQuery});
}

/// @nodoc
class __$InitialEventCopyWithImpl<$Res>
    extends _$IndustryEventCopyWithImpl<$Res>
    implements _$InitialEventCopyWith<$Res> {
  __$InitialEventCopyWithImpl(
      _InitialEvent _value, $Res Function(_InitialEvent) _then)
      : super(_value, (v) => _then(v as _InitialEvent));

  @override
  _InitialEvent get _value => super._value as _InitialEvent;

  @override
  $Res call({
    Object? indsutryQuery = freezed,
  }) {
    return _then(_InitialEvent(
      indsutryQuery: indsutryQuery == freezed
          ? _value.indsutryQuery
          : indsutryQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent({required this.indsutryQuery});

  @override
  final String indsutryQuery;

  @override
  String toString() {
    return 'IndustryEvent.initialEvent(indsutryQuery: $indsutryQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitialEvent &&
            const DeepCollectionEquality()
                .equals(other.indsutryQuery, indsutryQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(indsutryQuery));

  @JsonKey(ignore: true)
  @override
  _$InitialEventCopyWith<_InitialEvent> get copyWith =>
      __$InitialEventCopyWithImpl<_InitialEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indsutryQuery) initialEvent,
  }) {
    return initialEvent(indsutryQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String indsutryQuery)? initialEvent,
  }) {
    return initialEvent?.call(indsutryQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indsutryQuery)? initialEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(indsutryQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements IndustryEvent {
  const factory _InitialEvent({required String indsutryQuery}) =
      _$_InitialEvent;

  @override
  String get indsutryQuery;
  @override
  @JsonKey(ignore: true)
  _$InitialEventCopyWith<_InitialEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$IndustryStateTearOff {
  const _$IndustryStateTearOff();

  _Initial call(
      {required bool isLoading,
      required bool isError,
      required List<UserResponse> response}) {
    return _Initial(
      isLoading: isLoading,
      isError: isError,
      response: response,
    );
  }
}

/// @nodoc
const $IndustryState = _$IndustryStateTearOff();

/// @nodoc
mixin _$IndustryState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<UserResponse> get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndustryStateCopyWith<IndustryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndustryStateCopyWith<$Res> {
  factory $IndustryStateCopyWith(
          IndustryState value, $Res Function(IndustryState) then) =
      _$IndustryStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool isError, List<UserResponse> response});
}

/// @nodoc
class _$IndustryStateCopyWithImpl<$Res>
    implements $IndustryStateCopyWith<$Res> {
  _$IndustryStateCopyWithImpl(this._value, this._then);

  final IndustryState _value;
  // ignore: unused_field
  final $Res Function(IndustryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<UserResponse>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $IndustryStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool isError, List<UserResponse> response});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$IndustryStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isError = freezed,
    Object? response = freezed,
  }) {
    return _then(_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<UserResponse>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading, required this.isError, required this.response});

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final List<UserResponse> response;

  @override
  String toString() {
    return 'IndustryState(isLoading: $isLoading, isError: $isError, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements IndustryState {
  const factory _Initial(
      {required bool isLoading,
      required bool isError,
      required List<UserResponse> response}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<UserResponse> get response;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
