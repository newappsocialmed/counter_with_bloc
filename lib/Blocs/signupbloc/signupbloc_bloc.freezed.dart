// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signupbloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupblocEvent {
  String get name => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String password)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Signup value) signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Signup value)? signup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Signup value)? signup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupblocEventCopyWith<SignupblocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupblocEventCopyWith<$Res> {
  factory $SignupblocEventCopyWith(
          SignupblocEvent value, $Res Function(SignupblocEvent) then) =
      _$SignupblocEventCopyWithImpl<$Res, SignupblocEvent>;
  @useResult
  $Res call({String name, String password});
}

/// @nodoc
class _$SignupblocEventCopyWithImpl<$Res, $Val extends SignupblocEvent>
    implements $SignupblocEventCopyWith<$Res> {
  _$SignupblocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupImplCopyWith<$Res>
    implements $SignupblocEventCopyWith<$Res> {
  factory _$$SignupImplCopyWith(
          _$SignupImpl value, $Res Function(_$SignupImpl) then) =
      __$$SignupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String password});
}

/// @nodoc
class __$$SignupImplCopyWithImpl<$Res>
    extends _$SignupblocEventCopyWithImpl<$Res, _$SignupImpl>
    implements _$$SignupImplCopyWith<$Res> {
  __$$SignupImplCopyWithImpl(
      _$SignupImpl _value, $Res Function(_$SignupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? password = null,
  }) {
    return _then(_$SignupImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupImpl implements Signup {
  const _$SignupImpl({required this.name, required this.password});

  @override
  final String name;
  @override
  final String password;

  @override
  String toString() {
    return 'SignupblocEvent.signup(name: $name, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      __$$SignupImplCopyWithImpl<_$SignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String password) signup,
  }) {
    return signup(name, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String password)? signup,
  }) {
    return signup?.call(name, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String password)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(name, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Signup value) signup,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Signup value)? signup,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Signup value)? signup,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class Signup implements SignupblocEvent {
  const factory Signup(
      {required final String name,
      required final String password}) = _$SignupImpl;

  @override
  String get name;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignupImplCopyWith<_$SignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignupblocState {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupblocStateCopyWith<SignupblocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupblocStateCopyWith<$Res> {
  factory $SignupblocStateCopyWith(
          SignupblocState value, $Res Function(SignupblocState) then) =
      _$SignupblocStateCopyWithImpl<$Res, SignupblocState>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SignupblocStateCopyWithImpl<$Res, $Val extends SignupblocState>
    implements $SignupblocStateCopyWith<$Res> {
  _$SignupblocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignupblocStateImplCopyWith<$Res>
    implements $SignupblocStateCopyWith<$Res> {
  factory _$$SignupblocStateImplCopyWith(_$SignupblocStateImpl value,
          $Res Function(_$SignupblocStateImpl) then) =
      __$$SignupblocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SignupblocStateImplCopyWithImpl<$Res>
    extends _$SignupblocStateCopyWithImpl<$Res, _$SignupblocStateImpl>
    implements _$$SignupblocStateImplCopyWith<$Res> {
  __$$SignupblocStateImplCopyWithImpl(
      _$SignupblocStateImpl _value, $Res Function(_$SignupblocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SignupblocStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupblocStateImpl implements _SignupblocState {
  const _$SignupblocStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SignupblocState(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupblocStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupblocStateImplCopyWith<_$SignupblocStateImpl> get copyWith =>
      __$$SignupblocStateImplCopyWithImpl<_$SignupblocStateImpl>(
          this, _$identity);
}

abstract class _SignupblocState implements SignupblocState {
  const factory _SignupblocState({required final String message}) =
      _$SignupblocStateImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SignupblocStateImplCopyWith<_$SignupblocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
