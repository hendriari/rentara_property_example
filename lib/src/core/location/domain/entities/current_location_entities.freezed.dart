// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_location_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CurrentLocationEntities {

 double get lat; double get long;
/// Create a copy of CurrentLocationEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentLocationEntitiesCopyWith<CurrentLocationEntities> get copyWith => _$CurrentLocationEntitiesCopyWithImpl<CurrentLocationEntities>(this as CurrentLocationEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentLocationEntities&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long));
}


@override
int get hashCode => Object.hash(runtimeType,lat,long);

@override
String toString() {
  return 'CurrentLocationEntities(lat: $lat, long: $long)';
}


}

/// @nodoc
abstract mixin class $CurrentLocationEntitiesCopyWith<$Res>  {
  factory $CurrentLocationEntitiesCopyWith(CurrentLocationEntities value, $Res Function(CurrentLocationEntities) _then) = _$CurrentLocationEntitiesCopyWithImpl;
@useResult
$Res call({
 double lat, double long
});




}
/// @nodoc
class _$CurrentLocationEntitiesCopyWithImpl<$Res>
    implements $CurrentLocationEntitiesCopyWith<$Res> {
  _$CurrentLocationEntitiesCopyWithImpl(this._self, this._then);

  final CurrentLocationEntities _self;
  final $Res Function(CurrentLocationEntities) _then;

/// Create a copy of CurrentLocationEntities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? long = null,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentLocationEntities].
extension CurrentLocationEntitiesPatterns on CurrentLocationEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentLocationEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentLocationEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentLocationEntities value)  $default,){
final _that = this;
switch (_that) {
case _CurrentLocationEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentLocationEntities value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentLocationEntities() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lat,  double long)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentLocationEntities() when $default != null:
return $default(_that.lat,_that.long);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lat,  double long)  $default,) {final _that = this;
switch (_that) {
case _CurrentLocationEntities():
return $default(_that.lat,_that.long);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lat,  double long)?  $default,) {final _that = this;
switch (_that) {
case _CurrentLocationEntities() when $default != null:
return $default(_that.lat,_that.long);case _:
  return null;

}
}

}

/// @nodoc


class _CurrentLocationEntities implements CurrentLocationEntities {
   _CurrentLocationEntities({required this.lat, required this.long});
  

@override final  double lat;
@override final  double long;

/// Create a copy of CurrentLocationEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentLocationEntitiesCopyWith<_CurrentLocationEntities> get copyWith => __$CurrentLocationEntitiesCopyWithImpl<_CurrentLocationEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentLocationEntities&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.long, long) || other.long == long));
}


@override
int get hashCode => Object.hash(runtimeType,lat,long);

@override
String toString() {
  return 'CurrentLocationEntities(lat: $lat, long: $long)';
}


}

/// @nodoc
abstract mixin class _$CurrentLocationEntitiesCopyWith<$Res> implements $CurrentLocationEntitiesCopyWith<$Res> {
  factory _$CurrentLocationEntitiesCopyWith(_CurrentLocationEntities value, $Res Function(_CurrentLocationEntities) _then) = __$CurrentLocationEntitiesCopyWithImpl;
@override @useResult
$Res call({
 double lat, double long
});




}
/// @nodoc
class __$CurrentLocationEntitiesCopyWithImpl<$Res>
    implements _$CurrentLocationEntitiesCopyWith<$Res> {
  __$CurrentLocationEntitiesCopyWithImpl(this._self, this._then);

  final _CurrentLocationEntities _self;
  final $Res Function(_CurrentLocationEntities) _then;

/// Create a copy of CurrentLocationEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? long = null,}) {
  return _then(_CurrentLocationEntities(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,long: null == long ? _self.long : long // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
