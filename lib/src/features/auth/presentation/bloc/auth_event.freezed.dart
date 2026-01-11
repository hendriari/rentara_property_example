// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthEventLogin value)?  login,TResult Function( AuthEventRegister value)?  register,TResult Function( AuthEventGetCurrentUserData value)?  getCurrentUserData,TResult Function( AuthEventLogout value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthEventLogin() when login != null:
return login(_that);case AuthEventRegister() when register != null:
return register(_that);case AuthEventGetCurrentUserData() when getCurrentUserData != null:
return getCurrentUserData(_that);case AuthEventLogout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthEventLogin value)  login,required TResult Function( AuthEventRegister value)  register,required TResult Function( AuthEventGetCurrentUserData value)  getCurrentUserData,required TResult Function( AuthEventLogout value)  logout,}){
final _that = this;
switch (_that) {
case AuthEventLogin():
return login(_that);case AuthEventRegister():
return register(_that);case AuthEventGetCurrentUserData():
return getCurrentUserData(_that);case AuthEventLogout():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthEventLogin value)?  login,TResult? Function( AuthEventRegister value)?  register,TResult? Function( AuthEventGetCurrentUserData value)?  getCurrentUserData,TResult? Function( AuthEventLogout value)?  logout,}){
final _that = this;
switch (_that) {
case AuthEventLogin() when login != null:
return login(_that);case AuthEventRegister() when register != null:
return register(_that);case AuthEventGetCurrentUserData() when getCurrentUserData != null:
return getCurrentUserData(_that);case AuthEventLogout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  login,TResult Function( String firstName,  String lastName,  String phone,  String email,  String password)?  register,TResult Function()?  getCurrentUserData,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthEventLogin() when login != null:
return login(_that.email,_that.password);case AuthEventRegister() when register != null:
return register(_that.firstName,_that.lastName,_that.phone,_that.email,_that.password);case AuthEventGetCurrentUserData() when getCurrentUserData != null:
return getCurrentUserData();case AuthEventLogout() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  login,required TResult Function( String firstName,  String lastName,  String phone,  String email,  String password)  register,required TResult Function()  getCurrentUserData,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case AuthEventLogin():
return login(_that.email,_that.password);case AuthEventRegister():
return register(_that.firstName,_that.lastName,_that.phone,_that.email,_that.password);case AuthEventGetCurrentUserData():
return getCurrentUserData();case AuthEventLogout():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  login,TResult? Function( String firstName,  String lastName,  String phone,  String email,  String password)?  register,TResult? Function()?  getCurrentUserData,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case AuthEventLogin() when login != null:
return login(_that.email,_that.password);case AuthEventRegister() when register != null:
return register(_that.firstName,_that.lastName,_that.phone,_that.email,_that.password);case AuthEventGetCurrentUserData() when getCurrentUserData != null:
return getCurrentUserData();case AuthEventLogout() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class AuthEventLogin implements AuthEvent {
   AuthEventLogin({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthEventLoginCopyWith<AuthEventLogin> get copyWith => _$AuthEventLoginCopyWithImpl<AuthEventLogin>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEventLogin&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.login(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthEventLoginCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthEventLoginCopyWith(AuthEventLogin value, $Res Function(AuthEventLogin) _then) = _$AuthEventLoginCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$AuthEventLoginCopyWithImpl<$Res>
    implements $AuthEventLoginCopyWith<$Res> {
  _$AuthEventLoginCopyWithImpl(this._self, this._then);

  final AuthEventLogin _self;
  final $Res Function(AuthEventLogin) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(AuthEventLogin(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthEventRegister implements AuthEvent {
   AuthEventRegister({required this.firstName, required this.lastName, required this.phone, required this.email, required this.password});
  

 final  String firstName;
 final  String lastName;
 final  String phone;
 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthEventRegisterCopyWith<AuthEventRegister> get copyWith => _$AuthEventRegisterCopyWithImpl<AuthEventRegister>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEventRegister&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,firstName,lastName,phone,email,password);

@override
String toString() {
  return 'AuthEvent.register(firstName: $firstName, lastName: $lastName, phone: $phone, email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $AuthEventRegisterCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $AuthEventRegisterCopyWith(AuthEventRegister value, $Res Function(AuthEventRegister) _then) = _$AuthEventRegisterCopyWithImpl;
@useResult
$Res call({
 String firstName, String lastName, String phone, String email, String password
});




}
/// @nodoc
class _$AuthEventRegisterCopyWithImpl<$Res>
    implements $AuthEventRegisterCopyWith<$Res> {
  _$AuthEventRegisterCopyWithImpl(this._self, this._then);

  final AuthEventRegister _self;
  final $Res Function(AuthEventRegister) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? firstName = null,Object? lastName = null,Object? phone = null,Object? email = null,Object? password = null,}) {
  return _then(AuthEventRegister(
firstName: null == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String,lastName: null == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthEventGetCurrentUserData implements AuthEvent {
   AuthEventGetCurrentUserData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEventGetCurrentUserData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.getCurrentUserData()';
}


}




/// @nodoc


class AuthEventLogout implements AuthEvent {
   AuthEventLogout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEventLogout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logout()';
}


}




// dart format on
