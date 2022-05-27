// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterEventTearOff {
  const _$FilterEventTearOff();

  _InitialEvent initialEvent() {
    return const _InitialEvent();
  }

  FilterEvent filterEvent({required String filterQuery}) {
    return FilterEvent(
      filterQuery: filterQuery,
    );
  }
}

/// @nodoc
const $FilterEvent = _$FilterEventTearOff();

/// @nodoc
mixin _$FilterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(String filterQuery) filterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String filterQuery)? filterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String filterQuery)? filterEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(FilterEvent value) filterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(FilterEvent value)? filterEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(FilterEvent value)? filterEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res> implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(this._value, this._then);

  final FilterEvent _value;
  // ignore: unused_field
  final $Res Function(FilterEvent) _then;
}

/// @nodoc
abstract class _$InitialEventCopyWith<$Res> {
  factory _$InitialEventCopyWith(
          _InitialEvent value, $Res Function(_InitialEvent) then) =
      __$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialEventCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements _$InitialEventCopyWith<$Res> {
  __$InitialEventCopyWithImpl(
      _InitialEvent _value, $Res Function(_InitialEvent) _then)
      : super(_value, (v) => _then(v as _InitialEvent));

  @override
  _InitialEvent get _value => super._value as _InitialEvent;
}

/// @nodoc

class _$_InitialEvent implements _InitialEvent {
  const _$_InitialEvent();

  @override
  String toString() {
    return 'FilterEvent.initialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(String filterQuery) filterEvent,
  }) {
    return initialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String filterQuery)? filterEvent,
  }) {
    return initialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String filterQuery)? filterEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(FilterEvent value) filterEvent,
  }) {
    return initialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(FilterEvent value)? filterEvent,
  }) {
    return initialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(FilterEvent value)? filterEvent,
    required TResult orElse(),
  }) {
    if (initialEvent != null) {
      return initialEvent(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements FilterEvent {
  const factory _InitialEvent() = _$_InitialEvent;
}

/// @nodoc
abstract class $FilterEventCopyWith<$Res> {
  factory $FilterEventCopyWith(
          FilterEvent value, $Res Function(FilterEvent) then) =
      _$FilterEventCopyWithImpl<$Res>;
  $Res call({String filterQuery});
}

/// @nodoc
class _$FilterEventCopyWithImpl<$Res> extends _$FilterEventCopyWithImpl<$Res>
    implements $FilterEventCopyWith<$Res> {
  _$FilterEventCopyWithImpl(
      FilterEvent _value, $Res Function(FilterEvent) _then)
      : super(_value, (v) => _then(v as FilterEvent));

  @override
  FilterEvent get _value => super._value as FilterEvent;

  @override
  $Res call({
    Object? filterQuery = freezed,
  }) {
    return _then(FilterEvent(
      filterQuery: filterQuery == freezed
          ? _value.filterQuery
          : filterQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterEvent implements FilterEvent {
  const _$FilterEvent({required this.filterQuery});

  @override
  final String filterQuery;

  @override
  String toString() {
    return 'FilterEvent.filterEvent(filterQuery: $filterQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FilterEvent &&
            const DeepCollectionEquality()
                .equals(other.filterQuery, filterQuery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(filterQuery));

  @JsonKey(ignore: true)
  @override
  $FilterEventCopyWith<FilterEvent> get copyWith =>
      _$FilterEventCopyWithImpl<FilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialEvent,
    required TResult Function(String filterQuery) filterEvent,
  }) {
    return filterEvent(filterQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String filterQuery)? filterEvent,
  }) {
    return filterEvent?.call(filterQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialEvent,
    TResult Function(String filterQuery)? filterEvent,
    required TResult orElse(),
  }) {
    if (filterEvent != null) {
      return filterEvent(filterQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) initialEvent,
    required TResult Function(FilterEvent value) filterEvent,
  }) {
    return filterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(FilterEvent value)? filterEvent,
  }) {
    return filterEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? initialEvent,
    TResult Function(FilterEvent value)? filterEvent,
    required TResult orElse(),
  }) {
    if (filterEvent != null) {
      return filterEvent(this);
    }
    return orElse();
  }
}

abstract class FilterEvent implements FilterEvent {
  const factory FilterEvent({required String filterQuery}) = _$FilterEvent;

  String get filterQuery;
  @JsonKey(ignore: true)
  $FilterEventCopyWith<FilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FilterStateTearOff {
  const _$FilterStateTearOff();

  _Initial call({required List<UserResponse> response}) {
    return _Initial(
      response: response,
    );
  }
}

/// @nodoc
const $FilterState = _$FilterStateTearOff();

/// @nodoc
mixin _$FilterState {
  List<UserResponse> get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
  $Res call({List<UserResponse> response});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<UserResponse>,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $FilterStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({List<UserResponse> response});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_Initial(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as List<UserResponse>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.response});

  @override
  final List<UserResponse> response;

  @override
  String toString() {
    return 'FilterState(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements FilterState {
  const factory _Initial({required List<UserResponse> response}) = _$_Initial;

  @override
  List<UserResponse> get response;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
