// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEntities {

 int? get id; String? get firstName; String? get lastName; String? get phone; String? get name; String? get email; String? get emailVerifiedAt; String? get updatedAt;
/// Create a copy of UserEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserEntitiesCopyWith<UserEntities> get copyWith => _$UserEntitiesCopyWithImpl<UserEntities>(this as UserEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEntities&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,phone,name,email,emailVerifiedAt,updatedAt);

@override
String toString() {
  return 'UserEntities(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserEntitiesCopyWith<$Res>  {
  factory $UserEntitiesCopyWith(UserEntities value, $Res Function(UserEntities) _then) = _$UserEntitiesCopyWithImpl;
@useResult
$Res call({
 int? id, String? firstName, String? lastName, String? phone, String? name, String? email, String? emailVerifiedAt, String? updatedAt
});




}
/// @nodoc
class _$UserEntitiesCopyWithImpl<$Res>
    implements $UserEntitiesCopyWith<$Res> {
  _$UserEntitiesCopyWithImpl(this._self, this._then);

  final UserEntities _self;
  final $Res Function(UserEntities) _then;

/// Create a copy of UserEntities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? name = freezed,Object? email = freezed,Object? emailVerifiedAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserEntities].
extension UserEntitiesPatterns on UserEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserEntities() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserEntities value)  $default,){
final _that = this;
switch (_that) {
case _UserEntities():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserEntities value)?  $default,){
final _that = this;
switch (_that) {
case _UserEntities() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? firstName,  String? lastName,  String? phone,  String? name,  String? email,  String? emailVerifiedAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserEntities() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.phone,_that.name,_that.email,_that.emailVerifiedAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? firstName,  String? lastName,  String? phone,  String? name,  String? email,  String? emailVerifiedAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserEntities():
return $default(_that.id,_that.firstName,_that.lastName,_that.phone,_that.name,_that.email,_that.emailVerifiedAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? firstName,  String? lastName,  String? phone,  String? name,  String? email,  String? emailVerifiedAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserEntities() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.phone,_that.name,_that.email,_that.emailVerifiedAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserEntities implements UserEntities {
   _UserEntities({this.id, this.firstName, this.lastName, this.phone, this.name, this.email, this.emailVerifiedAt, this.updatedAt});
  

@override final  int? id;
@override final  String? firstName;
@override final  String? lastName;
@override final  String? phone;
@override final  String? name;
@override final  String? email;
@override final  String? emailVerifiedAt;
@override final  String? updatedAt;

/// Create a copy of UserEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserEntitiesCopyWith<_UserEntities> get copyWith => __$UserEntitiesCopyWithImpl<_UserEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserEntities&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.emailVerifiedAt, emailVerifiedAt) || other.emailVerifiedAt == emailVerifiedAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,phone,name,email,emailVerifiedAt,updatedAt);

@override
String toString() {
  return 'UserEntities(id: $id, firstName: $firstName, lastName: $lastName, phone: $phone, name: $name, email: $email, emailVerifiedAt: $emailVerifiedAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserEntitiesCopyWith<$Res> implements $UserEntitiesCopyWith<$Res> {
  factory _$UserEntitiesCopyWith(_UserEntities value, $Res Function(_UserEntities) _then) = __$UserEntitiesCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? firstName, String? lastName, String? phone, String? name, String? email, String? emailVerifiedAt, String? updatedAt
});




}
/// @nodoc
class __$UserEntitiesCopyWithImpl<$Res>
    implements _$UserEntitiesCopyWith<$Res> {
  __$UserEntitiesCopyWithImpl(this._self, this._then);

  final _UserEntities _self;
  final $Res Function(_UserEntities) _then;

/// Create a copy of UserEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? firstName = freezed,Object? lastName = freezed,Object? phone = freezed,Object? name = freezed,Object? email = freezed,Object? emailVerifiedAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserEntities(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,emailVerifiedAt: freezed == emailVerifiedAt ? _self.emailVerifiedAt : emailVerifiedAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
