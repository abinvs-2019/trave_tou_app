// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleLogin,
    required TResult Function() getSession,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? googleLogin,
    TResult Function()? getSession,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleLogin,
    TResult Function()? getSession,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_G_Login value) googleLogin,
    required TResult Function(_APP_SESSION value) getSession,
    required TResult Function(_APP_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_G_Login value)? googleLogin,
    TResult Function(_APP_SESSION value)? getSession,
    TResult Function(_APP_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_G_Login value)? googleLogin,
    TResult Function(_APP_SESSION value)? getSession,
    TResult Function(_APP_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_G_LoginCopyWith<$Res> {
  factory _$$_G_LoginCopyWith(
          _$_G_Login value, $Res Function(_$_G_Login) then) =
      __$$_G_LoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_G_LoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_G_LoginCopyWith<$Res> {
  __$$_G_LoginCopyWithImpl(_$_G_Login _value, $Res Function(_$_G_Login) _then)
      : super(_value, (v) => _then(v as _$_G_Login));

  @override
  _$_G_Login get _value => super._value as _$_G_Login;
}

/// @nodoc

class _$_G_Login implements _G_Login {
  const _$_G_Login();

  @override
  String toString() {
    return 'AuthEvent.googleLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_G_Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleLogin,
    required TResult Function() getSession,
    required TResult Function() logout,
  }) {
    return googleLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? googleLogin,
    TResult Function()? getSession,
    TResult Function()? logout,
  }) {
    return googleLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleLogin,
    TResult Function()? getSession,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (googleLogin != null) {
      return googleLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_G_Login value) googleLogin,
    required TResult Function(_APP_SESSION value) getSession,
    required TResult Function(_APP_Logout value) logout,
  }) {
    return googleLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_G_Login value)? googleLogin,
    TResult Function(_APP_SESSION value)? getSession,
    TResult Function(_APP_Logout value)? logout,
  }) {
    return googleLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_G_Login value)? googleLogin,
    TResult Function(_APP_SESSION value)? getSession,
    TResult Function(_APP_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (googleLogin != null) {
      return googleLogin(this);
    }
    return orElse();
  }
}

abstract class _G_Login implements AuthEvent {
  const factory _G_Login() = _$_G_Login;
}

/// @nodoc
abstract class _$$_APP_SESSIONCopyWith<$Res> {
  factory _$$_APP_SESSIONCopyWith(
          _$_APP_SESSION value, $Res Function(_$_APP_SESSION) then) =
      __$$_APP_SESSIONCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_APP_SESSIONCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_APP_SESSIONCopyWith<$Res> {
  __$$_APP_SESSIONCopyWithImpl(
      _$_APP_SESSION _value, $Res Function(_$_APP_SESSION) _then)
      : super(_value, (v) => _then(v as _$_APP_SESSION));

  @override
  _$_APP_SESSION get _value => super._value as _$_APP_SESSION;
}

/// @nodoc

class _$_APP_SESSION implements _APP_SESSION {
  const _$_APP_SESSION();

  @override
  String toString() {
    return 'AuthEvent.getSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_APP_SESSION);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleLogin,
    required TResult Function() getSession,
    required TResult Function() logout,
  }) {
    return getSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? googleLogin,
    TResult Function()? getSession,
    TResult Function()? logout,
  }) {
    return getSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleLogin,
    TResult Function()? getSession,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (getSession != null) {
      return getSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_G_Login value) googleLogin,
    required TResult Function(_APP_SESSION value) getSession,
    required TResult Function(_APP_Logout value) logout,
  }) {
    return getSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_G_Login value)? googleLogin,
    TResult Function(_APP_SESSION value)? getSession,
    TResult Function(_APP_Logout value)? logout,
  }) {
    return getSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_G_Login value)? googleLogin,
    TResult Function(_APP_SESSION value)? getSession,
    TResult Function(_APP_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (getSession != null) {
      return getSession(this);
    }
    return orElse();
  }
}

abstract class _APP_SESSION implements AuthEvent {
  const factory _APP_SESSION() = _$_APP_SESSION;
}

/// @nodoc
abstract class _$$_APP_LogoutCopyWith<$Res> {
  factory _$$_APP_LogoutCopyWith(
          _$_APP_Logout value, $Res Function(_$_APP_Logout) then) =
      __$$_APP_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_APP_LogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_APP_LogoutCopyWith<$Res> {
  __$$_APP_LogoutCopyWithImpl(
      _$_APP_Logout _value, $Res Function(_$_APP_Logout) _then)
      : super(_value, (v) => _then(v as _$_APP_Logout));

  @override
  _$_APP_Logout get _value => super._value as _$_APP_Logout;
}

/// @nodoc

class _$_APP_Logout implements _APP_Logout {
  const _$_APP_Logout();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_APP_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() googleLogin,
    required TResult Function() getSession,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? googleLogin,
    TResult Function()? getSession,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? googleLogin,
    TResult Function()? getSession,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_G_Login value) googleLogin,
    required TResult Function(_APP_SESSION value) getSession,
    required TResult Function(_APP_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_G_Login value)? googleLogin,
    TResult Function(_APP_SESSION value)? getSession,
    TResult Function(_APP_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_G_Login value)? googleLogin,
    TResult Function(_APP_SESSION value)? getSession,
    TResult Function(_APP_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _APP_Logout implements AuthEvent {
  const factory _APP_Logout() = _$_APP_Logout;
}

/// @nodoc
mixin _$AuthState {
  bool get isLogging => throw _privateConstructorUsedError;
  bool? get isError => throw _privateConstructorUsedError;
  bool get isLoggedIn => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get profileImage => throw _privateConstructorUsedError;
  bool? get logout => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLogging,
      bool? isError,
      bool isLoggedIn,
      String? name,
      String? email,
      String? profileImage,
      bool? logout});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? isLogging = freezed,
    Object? isError = freezed,
    Object? isLoggedIn = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profileImage = freezed,
    Object? logout = freezed,
  }) {
    return _then(_value.copyWith(
      isLogging: isLogging == freezed
          ? _value.isLogging
          : isLogging // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      logout: logout == freezed
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLogging,
      bool? isError,
      bool isLoggedIn,
      String? name,
      String? email,
      String? profileImage,
      bool? logout});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, (v) => _then(v as _$_AuthState));

  @override
  _$_AuthState get _value => super._value as _$_AuthState;

  @override
  $Res call({
    Object? isLogging = freezed,
    Object? isError = freezed,
    Object? isLoggedIn = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? profileImage = freezed,
    Object? logout = freezed,
  }) {
    return _then(_$_AuthState(
      isLogging: isLogging == freezed
          ? _value.isLogging
          : isLogging // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      isLoggedIn: isLoggedIn == freezed
          ? _value.isLoggedIn
          : isLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      logout: logout == freezed
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isLogging,
      this.isError,
      required this.isLoggedIn,
      this.name,
      this.email,
      this.profileImage,
      required this.logout});

  @override
  final bool isLogging;
  @override
  final bool? isError;
  @override
  final bool isLoggedIn;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? profileImage;
  @override
  final bool? logout;

  @override
  String toString() {
    return 'AuthState(isLogging: $isLogging, isError: $isError, isLoggedIn: $isLoggedIn, name: $name, email: $email, profileImage: $profileImage, logout: $logout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            const DeepCollectionEquality().equals(other.isLogging, isLogging) &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.isLoggedIn, isLoggedIn) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality().equals(other.logout, logout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLogging),
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(isLoggedIn),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(logout));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isLogging,
      final bool? isError,
      required final bool isLoggedIn,
      final String? name,
      final String? email,
      final String? profileImage,
      required final bool? logout}) = _$_AuthState;

  @override
  bool get isLogging;
  @override
  bool? get isError;
  @override
  bool get isLoggedIn;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get profileImage;
  @override
  bool? get logout;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
