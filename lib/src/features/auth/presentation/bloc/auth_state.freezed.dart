// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {

 UserEntities? get user;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState(user: $user)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 UserEntities? user
});


$UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  init,TResult Function( _LoginLoading value)?  loginLoading,TResult Function( _LoginSuccess value)?  loginSuccess,TResult Function( _LoginFailed value)?  loginFailed,TResult Function( _RegisterLoading value)?  registerLoading,TResult Function( _RegisterSuccess value)?  registerSuccess,TResult Function( _RegisterFailed value)?  registerFailed,TResult Function( _GetCurrentUserDataLoading value)?  getCurrentUserDataLoading,TResult Function( _GetCurrentUserDataSuccess value)?  getCurrentUserDataSuccess,TResult Function( _Failed value)?  failed,TResult Function( _LogoutLoading value)?  logoutLoading,TResult Function( _LogoutSuccess value)?  logoutSuccess,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when init != null:
return init(_that);case _LoginLoading() when loginLoading != null:
return loginLoading(_that);case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _LoginFailed() when loginFailed != null:
return loginFailed(_that);case _RegisterLoading() when registerLoading != null:
return registerLoading(_that);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case _RegisterFailed() when registerFailed != null:
return registerFailed(_that);case _GetCurrentUserDataLoading() when getCurrentUserDataLoading != null:
return getCurrentUserDataLoading(_that);case _GetCurrentUserDataSuccess() when getCurrentUserDataSuccess != null:
return getCurrentUserDataSuccess(_that);case _Failed() when failed != null:
return failed(_that);case _LogoutLoading() when logoutLoading != null:
return logoutLoading(_that);case _LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  init,required TResult Function( _LoginLoading value)  loginLoading,required TResult Function( _LoginSuccess value)  loginSuccess,required TResult Function( _LoginFailed value)  loginFailed,required TResult Function( _RegisterLoading value)  registerLoading,required TResult Function( _RegisterSuccess value)  registerSuccess,required TResult Function( _RegisterFailed value)  registerFailed,required TResult Function( _GetCurrentUserDataLoading value)  getCurrentUserDataLoading,required TResult Function( _GetCurrentUserDataSuccess value)  getCurrentUserDataSuccess,required TResult Function( _Failed value)  failed,required TResult Function( _LogoutLoading value)  logoutLoading,required TResult Function( _LogoutSuccess value)  logoutSuccess,}){
final _that = this;
switch (_that) {
case _Initial():
return init(_that);case _LoginLoading():
return loginLoading(_that);case _LoginSuccess():
return loginSuccess(_that);case _LoginFailed():
return loginFailed(_that);case _RegisterLoading():
return registerLoading(_that);case _RegisterSuccess():
return registerSuccess(_that);case _RegisterFailed():
return registerFailed(_that);case _GetCurrentUserDataLoading():
return getCurrentUserDataLoading(_that);case _GetCurrentUserDataSuccess():
return getCurrentUserDataSuccess(_that);case _Failed():
return failed(_that);case _LogoutLoading():
return logoutLoading(_that);case _LogoutSuccess():
return logoutSuccess(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  init,TResult? Function( _LoginLoading value)?  loginLoading,TResult? Function( _LoginSuccess value)?  loginSuccess,TResult? Function( _LoginFailed value)?  loginFailed,TResult? Function( _RegisterLoading value)?  registerLoading,TResult? Function( _RegisterSuccess value)?  registerSuccess,TResult? Function( _RegisterFailed value)?  registerFailed,TResult? Function( _GetCurrentUserDataLoading value)?  getCurrentUserDataLoading,TResult? Function( _GetCurrentUserDataSuccess value)?  getCurrentUserDataSuccess,TResult? Function( _Failed value)?  failed,TResult? Function( _LogoutLoading value)?  logoutLoading,TResult? Function( _LogoutSuccess value)?  logoutSuccess,}){
final _that = this;
switch (_that) {
case _Initial() when init != null:
return init(_that);case _LoginLoading() when loginLoading != null:
return loginLoading(_that);case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _LoginFailed() when loginFailed != null:
return loginFailed(_that);case _RegisterLoading() when registerLoading != null:
return registerLoading(_that);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case _RegisterFailed() when registerFailed != null:
return registerFailed(_that);case _GetCurrentUserDataLoading() when getCurrentUserDataLoading != null:
return getCurrentUserDataLoading(_that);case _GetCurrentUserDataSuccess() when getCurrentUserDataSuccess != null:
return getCurrentUserDataSuccess(_that);case _Failed() when failed != null:
return failed(_that);case _LogoutLoading() when logoutLoading != null:
return logoutLoading(_that);case _LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( UserEntities? user)?  init,TResult Function( UserEntities? user)?  loginLoading,TResult Function( UserEntities? user)?  loginSuccess,TResult Function( UserEntities? user,  String message)?  loginFailed,TResult Function( UserEntities? user)?  registerLoading,TResult Function( UserEntities? user)?  registerSuccess,TResult Function( UserEntities? user,  String message)?  registerFailed,TResult Function( UserEntities? user)?  getCurrentUserDataLoading,TResult Function( UserEntities? user)?  getCurrentUserDataSuccess,TResult Function( UserEntities? user,  String message)?  failed,TResult Function( UserEntities? user)?  logoutLoading,TResult Function( UserEntities? user,  String message)?  logoutSuccess,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when init != null:
return init(_that.user);case _LoginLoading() when loginLoading != null:
return loginLoading(_that.user);case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.user);case _LoginFailed() when loginFailed != null:
return loginFailed(_that.user,_that.message);case _RegisterLoading() when registerLoading != null:
return registerLoading(_that.user);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.user);case _RegisterFailed() when registerFailed != null:
return registerFailed(_that.user,_that.message);case _GetCurrentUserDataLoading() when getCurrentUserDataLoading != null:
return getCurrentUserDataLoading(_that.user);case _GetCurrentUserDataSuccess() when getCurrentUserDataSuccess != null:
return getCurrentUserDataSuccess(_that.user);case _Failed() when failed != null:
return failed(_that.user,_that.message);case _LogoutLoading() when logoutLoading != null:
return logoutLoading(_that.user);case _LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that.user,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( UserEntities? user)  init,required TResult Function( UserEntities? user)  loginLoading,required TResult Function( UserEntities? user)  loginSuccess,required TResult Function( UserEntities? user,  String message)  loginFailed,required TResult Function( UserEntities? user)  registerLoading,required TResult Function( UserEntities? user)  registerSuccess,required TResult Function( UserEntities? user,  String message)  registerFailed,required TResult Function( UserEntities? user)  getCurrentUserDataLoading,required TResult Function( UserEntities? user)  getCurrentUserDataSuccess,required TResult Function( UserEntities? user,  String message)  failed,required TResult Function( UserEntities? user)  logoutLoading,required TResult Function( UserEntities? user,  String message)  logoutSuccess,}) {final _that = this;
switch (_that) {
case _Initial():
return init(_that.user);case _LoginLoading():
return loginLoading(_that.user);case _LoginSuccess():
return loginSuccess(_that.user);case _LoginFailed():
return loginFailed(_that.user,_that.message);case _RegisterLoading():
return registerLoading(_that.user);case _RegisterSuccess():
return registerSuccess(_that.user);case _RegisterFailed():
return registerFailed(_that.user,_that.message);case _GetCurrentUserDataLoading():
return getCurrentUserDataLoading(_that.user);case _GetCurrentUserDataSuccess():
return getCurrentUserDataSuccess(_that.user);case _Failed():
return failed(_that.user,_that.message);case _LogoutLoading():
return logoutLoading(_that.user);case _LogoutSuccess():
return logoutSuccess(_that.user,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( UserEntities? user)?  init,TResult? Function( UserEntities? user)?  loginLoading,TResult? Function( UserEntities? user)?  loginSuccess,TResult? Function( UserEntities? user,  String message)?  loginFailed,TResult? Function( UserEntities? user)?  registerLoading,TResult? Function( UserEntities? user)?  registerSuccess,TResult? Function( UserEntities? user,  String message)?  registerFailed,TResult? Function( UserEntities? user)?  getCurrentUserDataLoading,TResult? Function( UserEntities? user)?  getCurrentUserDataSuccess,TResult? Function( UserEntities? user,  String message)?  failed,TResult? Function( UserEntities? user)?  logoutLoading,TResult? Function( UserEntities? user,  String message)?  logoutSuccess,}) {final _that = this;
switch (_that) {
case _Initial() when init != null:
return init(_that.user);case _LoginLoading() when loginLoading != null:
return loginLoading(_that.user);case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that.user);case _LoginFailed() when loginFailed != null:
return loginFailed(_that.user,_that.message);case _RegisterLoading() when registerLoading != null:
return registerLoading(_that.user);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that.user);case _RegisterFailed() when registerFailed != null:
return registerFailed(_that.user,_that.message);case _GetCurrentUserDataLoading() when getCurrentUserDataLoading != null:
return getCurrentUserDataLoading(_that.user);case _GetCurrentUserDataSuccess() when getCurrentUserDataSuccess != null:
return getCurrentUserDataSuccess(_that.user);case _Failed() when failed != null:
return failed(_that.user,_that.message);case _LogoutLoading() when logoutLoading != null:
return logoutLoading(_that.user);case _LogoutSuccess() when logoutSuccess != null:
return logoutSuccess(_that.user,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
   _Initial({this.user = null});
  

@override@JsonKey() final  UserEntities? user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.init(user: $user)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_Initial(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _LoginLoading implements AuthState {
   _LoginLoading({this.user = null});
  

@override@JsonKey() final  UserEntities? user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginLoadingCopyWith<_LoginLoading> get copyWith => __$LoginLoadingCopyWithImpl<_LoginLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginLoading&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.loginLoading(user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginLoadingCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$LoginLoadingCopyWith(_LoginLoading value, $Res Function(_LoginLoading) _then) = __$LoginLoadingCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginLoadingCopyWithImpl<$Res>
    implements _$LoginLoadingCopyWith<$Res> {
  __$LoginLoadingCopyWithImpl(this._self, this._then);

  final _LoginLoading _self;
  final $Res Function(_LoginLoading) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_LoginLoading(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _LoginSuccess implements AuthState {
   _LoginSuccess({this.user = null});
  

@override@JsonKey() final  UserEntities? user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginSuccessCopyWith<_LoginSuccess> get copyWith => __$LoginSuccessCopyWithImpl<_LoginSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSuccess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.loginSuccess(user: $user)';
}


}

/// @nodoc
abstract mixin class _$LoginSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$LoginSuccessCopyWith(_LoginSuccess value, $Res Function(_LoginSuccess) _then) = __$LoginSuccessCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginSuccessCopyWithImpl<$Res>
    implements _$LoginSuccessCopyWith<$Res> {
  __$LoginSuccessCopyWithImpl(this._self, this._then);

  final _LoginSuccess _self;
  final $Res Function(_LoginSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_LoginSuccess(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _LoginFailed implements AuthState {
   _LoginFailed({this.user = null, required this.message});
  

@override@JsonKey() final  UserEntities? user;
 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginFailedCopyWith<_LoginFailed> get copyWith => __$LoginFailedCopyWithImpl<_LoginFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginFailed&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,user,message);

@override
String toString() {
  return 'AuthState.loginFailed(user: $user, message: $message)';
}


}

/// @nodoc
abstract mixin class _$LoginFailedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$LoginFailedCopyWith(_LoginFailed value, $Res Function(_LoginFailed) _then) = __$LoginFailedCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user, String message
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$LoginFailedCopyWithImpl<$Res>
    implements _$LoginFailedCopyWith<$Res> {
  __$LoginFailedCopyWithImpl(this._self, this._then);

  final _LoginFailed _self;
  final $Res Function(_LoginFailed) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? message = null,}) {
  return _then(_LoginFailed(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _RegisterLoading implements AuthState {
   _RegisterLoading({this.user = null});
  

@override@JsonKey() final  UserEntities? user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterLoadingCopyWith<_RegisterLoading> get copyWith => __$RegisterLoadingCopyWithImpl<_RegisterLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterLoading&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.registerLoading(user: $user)';
}


}

/// @nodoc
abstract mixin class _$RegisterLoadingCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$RegisterLoadingCopyWith(_RegisterLoading value, $Res Function(_RegisterLoading) _then) = __$RegisterLoadingCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$RegisterLoadingCopyWithImpl<$Res>
    implements _$RegisterLoadingCopyWith<$Res> {
  __$RegisterLoadingCopyWithImpl(this._self, this._then);

  final _RegisterLoading _self;
  final $Res Function(_RegisterLoading) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_RegisterLoading(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _RegisterSuccess implements AuthState {
   _RegisterSuccess({this.user = null});
  

@override@JsonKey() final  UserEntities? user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterSuccessCopyWith<_RegisterSuccess> get copyWith => __$RegisterSuccessCopyWithImpl<_RegisterSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterSuccess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.registerSuccess(user: $user)';
}


}

/// @nodoc
abstract mixin class _$RegisterSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$RegisterSuccessCopyWith(_RegisterSuccess value, $Res Function(_RegisterSuccess) _then) = __$RegisterSuccessCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$RegisterSuccessCopyWithImpl<$Res>
    implements _$RegisterSuccessCopyWith<$Res> {
  __$RegisterSuccessCopyWithImpl(this._self, this._then);

  final _RegisterSuccess _self;
  final $Res Function(_RegisterSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_RegisterSuccess(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _RegisterFailed implements AuthState {
   _RegisterFailed({this.user = null, required this.message});
  

@override@JsonKey() final  UserEntities? user;
 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterFailedCopyWith<_RegisterFailed> get copyWith => __$RegisterFailedCopyWithImpl<_RegisterFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterFailed&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,user,message);

@override
String toString() {
  return 'AuthState.registerFailed(user: $user, message: $message)';
}


}

/// @nodoc
abstract mixin class _$RegisterFailedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$RegisterFailedCopyWith(_RegisterFailed value, $Res Function(_RegisterFailed) _then) = __$RegisterFailedCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user, String message
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$RegisterFailedCopyWithImpl<$Res>
    implements _$RegisterFailedCopyWith<$Res> {
  __$RegisterFailedCopyWithImpl(this._self, this._then);

  final _RegisterFailed _self;
  final $Res Function(_RegisterFailed) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? message = null,}) {
  return _then(_RegisterFailed(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _GetCurrentUserDataLoading implements AuthState {
   _GetCurrentUserDataLoading({this.user = null});
  

@override@JsonKey() final  UserEntities? user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCurrentUserDataLoadingCopyWith<_GetCurrentUserDataLoading> get copyWith => __$GetCurrentUserDataLoadingCopyWithImpl<_GetCurrentUserDataLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCurrentUserDataLoading&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.getCurrentUserDataLoading(user: $user)';
}


}

/// @nodoc
abstract mixin class _$GetCurrentUserDataLoadingCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$GetCurrentUserDataLoadingCopyWith(_GetCurrentUserDataLoading value, $Res Function(_GetCurrentUserDataLoading) _then) = __$GetCurrentUserDataLoadingCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$GetCurrentUserDataLoadingCopyWithImpl<$Res>
    implements _$GetCurrentUserDataLoadingCopyWith<$Res> {
  __$GetCurrentUserDataLoadingCopyWithImpl(this._self, this._then);

  final _GetCurrentUserDataLoading _self;
  final $Res Function(_GetCurrentUserDataLoading) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_GetCurrentUserDataLoading(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _GetCurrentUserDataSuccess implements AuthState {
   _GetCurrentUserDataSuccess({this.user = null});
  

@override@JsonKey() final  UserEntities? user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCurrentUserDataSuccessCopyWith<_GetCurrentUserDataSuccess> get copyWith => __$GetCurrentUserDataSuccessCopyWithImpl<_GetCurrentUserDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCurrentUserDataSuccess&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.getCurrentUserDataSuccess(user: $user)';
}


}

/// @nodoc
abstract mixin class _$GetCurrentUserDataSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$GetCurrentUserDataSuccessCopyWith(_GetCurrentUserDataSuccess value, $Res Function(_GetCurrentUserDataSuccess) _then) = __$GetCurrentUserDataSuccessCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$GetCurrentUserDataSuccessCopyWithImpl<$Res>
    implements _$GetCurrentUserDataSuccessCopyWith<$Res> {
  __$GetCurrentUserDataSuccessCopyWithImpl(this._self, this._then);

  final _GetCurrentUserDataSuccess _self;
  final $Res Function(_GetCurrentUserDataSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_GetCurrentUserDataSuccess(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _Failed implements AuthState {
   _Failed({this.user = null, required this.message});
  

@override@JsonKey() final  UserEntities? user;
 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedCopyWith<_Failed> get copyWith => __$FailedCopyWithImpl<_Failed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failed&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,user,message);

@override
String toString() {
  return 'AuthState.failed(user: $user, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) _then) = __$FailedCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user, String message
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$FailedCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(this._self, this._then);

  final _Failed _self;
  final $Res Function(_Failed) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? message = null,}) {
  return _then(_Failed(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _LogoutLoading implements AuthState {
   _LogoutLoading({this.user = null});
  

@override@JsonKey() final  UserEntities? user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogoutLoadingCopyWith<_LogoutLoading> get copyWith => __$LogoutLoadingCopyWithImpl<_LogoutLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutLoading&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.logoutLoading(user: $user)';
}


}

/// @nodoc
abstract mixin class _$LogoutLoadingCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$LogoutLoadingCopyWith(_LogoutLoading value, $Res Function(_LogoutLoading) _then) = __$LogoutLoadingCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$LogoutLoadingCopyWithImpl<$Res>
    implements _$LogoutLoadingCopyWith<$Res> {
  __$LogoutLoadingCopyWithImpl(this._self, this._then);

  final _LogoutLoading _self;
  final $Res Function(_LogoutLoading) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,}) {
  return _then(_LogoutLoading(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class _LogoutSuccess implements AuthState {
   _LogoutSuccess({this.user = null, required this.message});
  

@override@JsonKey() final  UserEntities? user;
 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogoutSuccessCopyWith<_LogoutSuccess> get copyWith => __$LogoutSuccessCopyWithImpl<_LogoutSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogoutSuccess&&(identical(other.user, user) || other.user == user)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,user,message);

@override
String toString() {
  return 'AuthState.logoutSuccess(user: $user, message: $message)';
}


}

/// @nodoc
abstract mixin class _$LogoutSuccessCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$LogoutSuccessCopyWith(_LogoutSuccess value, $Res Function(_LogoutSuccess) _then) = __$LogoutSuccessCopyWithImpl;
@override @useResult
$Res call({
 UserEntities? user, String message
});


@override $UserEntitiesCopyWith<$Res>? get user;

}
/// @nodoc
class __$LogoutSuccessCopyWithImpl<$Res>
    implements _$LogoutSuccessCopyWith<$Res> {
  __$LogoutSuccessCopyWithImpl(this._self, this._then);

  final _LogoutSuccess _self;
  final $Res Function(_LogoutSuccess) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? message = null,}) {
  return _then(_LogoutSuccess(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserEntitiesCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
