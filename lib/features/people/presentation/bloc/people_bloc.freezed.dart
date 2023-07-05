// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PeopleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getPeople,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getPeople,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getPeople,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleEventCopyWith<$Res> {
  factory $PeopleEventCopyWith(
          PeopleEvent value, $Res Function(PeopleEvent) then) =
      _$PeopleEventCopyWithImpl<$Res, PeopleEvent>;
}

/// @nodoc
class _$PeopleEventCopyWithImpl<$Res, $Val extends PeopleEvent>
    implements $PeopleEventCopyWith<$Res> {
  _$PeopleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$PeopleEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PeopleEvent.getPeople()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPeople,
  }) {
    return getPeople();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPeople,
  }) {
    return getPeople?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPeople,
    required TResult orElse(),
  }) {
    if (getPeople != null) {
      return getPeople();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) getPeople,
  }) {
    return getPeople(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? getPeople,
  }) {
    return getPeople?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? getPeople,
    required TResult orElse(),
  }) {
    if (getPeople != null) {
      return getPeople(this);
    }
    return orElse();
  }
}

abstract class _Started implements PeopleEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$PeopleState {
  PeopleBlocStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  List<Person>? get people => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeopleStateCopyWith<PeopleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleStateCopyWith<$Res> {
  factory $PeopleStateCopyWith(
          PeopleState value, $Res Function(PeopleState) then) =
      _$PeopleStateCopyWithImpl<$Res, PeopleState>;
  @useResult
  $Res call({PeopleBlocStatus status, String? error, List<Person>? people});
}

/// @nodoc
class _$PeopleStateCopyWithImpl<$Res, $Val extends PeopleState>
    implements $PeopleStateCopyWith<$Res> {
  _$PeopleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? people = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeopleBlocStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      people: freezed == people
          ? _value.people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeopleStateCopyWith<$Res>
    implements $PeopleStateCopyWith<$Res> {
  factory _$$_PeopleStateCopyWith(
          _$_PeopleState value, $Res Function(_$_PeopleState) then) =
      __$$_PeopleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PeopleBlocStatus status, String? error, List<Person>? people});
}

/// @nodoc
class __$$_PeopleStateCopyWithImpl<$Res>
    extends _$PeopleStateCopyWithImpl<$Res, _$_PeopleState>
    implements _$$_PeopleStateCopyWith<$Res> {
  __$$_PeopleStateCopyWithImpl(
      _$_PeopleState _value, $Res Function(_$_PeopleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
    Object? people = freezed,
  }) {
    return _then(_$_PeopleState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PeopleBlocStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      people: freezed == people
          ? _value._people
          : people // ignore: cast_nullable_to_non_nullable
              as List<Person>?,
    ));
  }
}

/// @nodoc

class _$_PeopleState implements _PeopleState {
  const _$_PeopleState(
      {required this.status, this.error, final List<Person>? people})
      : _people = people;

  @override
  final PeopleBlocStatus status;
  @override
  final String? error;
  final List<Person>? _people;
  @override
  List<Person>? get people {
    final value = _people;
    if (value == null) return null;
    if (_people is EqualUnmodifiableListView) return _people;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PeopleState(status: $status, error: $error, people: $people)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeopleState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._people, _people));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, error, const DeepCollectionEquality().hash(_people));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeopleStateCopyWith<_$_PeopleState> get copyWith =>
      __$$_PeopleStateCopyWithImpl<_$_PeopleState>(this, _$identity);
}

abstract class _PeopleState implements PeopleState {
  const factory _PeopleState(
      {required final PeopleBlocStatus status,
      final String? error,
      final List<Person>? people}) = _$_PeopleState;

  @override
  PeopleBlocStatus get status;
  @override
  String? get error;
  @override
  List<Person>? get people;
  @override
  @JsonKey(ignore: true)
  _$$_PeopleStateCopyWith<_$_PeopleState> get copyWith =>
      throw _privateConstructorUsedError;
}
