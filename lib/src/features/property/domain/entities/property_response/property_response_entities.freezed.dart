// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_response_entities.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PropertyResponseEntities {

 List<PropertyEntities>? get data; String? get nextPage;
/// Create a copy of PropertyResponseEntities
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<PropertyResponseEntities> get copyWith => _$PropertyResponseEntitiesCopyWithImpl<PropertyResponseEntities>(this as PropertyResponseEntities, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyResponseEntities&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),nextPage);

@override
String toString() {
  return 'PropertyResponseEntities(data: $data, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class $PropertyResponseEntitiesCopyWith<$Res>  {
  factory $PropertyResponseEntitiesCopyWith(PropertyResponseEntities value, $Res Function(PropertyResponseEntities) _then) = _$PropertyResponseEntitiesCopyWithImpl;
@useResult
$Res call({
 List<PropertyEntities>? data, String? nextPage
});




}
/// @nodoc
class _$PropertyResponseEntitiesCopyWithImpl<$Res>
    implements $PropertyResponseEntitiesCopyWith<$Res> {
  _$PropertyResponseEntitiesCopyWithImpl(this._self, this._then);

  final PropertyResponseEntities _self;
  final $Res Function(PropertyResponseEntities) _then;

/// Create a copy of PropertyResponseEntities
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? nextPage = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PropertyEntities>?,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyResponseEntities].
extension PropertyResponseEntitiesPatterns on PropertyResponseEntities {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyResponseEntities value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyResponseEntities() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyResponseEntities value)  $default,){
final _that = this;
switch (_that) {
case _PropertyResponseEntities():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyResponseEntities value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyResponseEntities() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PropertyEntities>? data,  String? nextPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyResponseEntities() when $default != null:
return $default(_that.data,_that.nextPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PropertyEntities>? data,  String? nextPage)  $default,) {final _that = this;
switch (_that) {
case _PropertyResponseEntities():
return $default(_that.data,_that.nextPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PropertyEntities>? data,  String? nextPage)?  $default,) {final _that = this;
switch (_that) {
case _PropertyResponseEntities() when $default != null:
return $default(_that.data,_that.nextPage);case _:
  return null;

}
}

}

/// @nodoc


class _PropertyResponseEntities implements PropertyResponseEntities {
   _PropertyResponseEntities({final  List<PropertyEntities>? data, this.nextPage}): _data = data;
  

 final  List<PropertyEntities>? _data;
@override List<PropertyEntities>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? nextPage;

/// Create a copy of PropertyResponseEntities
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyResponseEntitiesCopyWith<_PropertyResponseEntities> get copyWith => __$PropertyResponseEntitiesCopyWithImpl<_PropertyResponseEntities>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyResponseEntities&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.nextPage, nextPage) || other.nextPage == nextPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),nextPage);

@override
String toString() {
  return 'PropertyResponseEntities(data: $data, nextPage: $nextPage)';
}


}

/// @nodoc
abstract mixin class _$PropertyResponseEntitiesCopyWith<$Res> implements $PropertyResponseEntitiesCopyWith<$Res> {
  factory _$PropertyResponseEntitiesCopyWith(_PropertyResponseEntities value, $Res Function(_PropertyResponseEntities) _then) = __$PropertyResponseEntitiesCopyWithImpl;
@override @useResult
$Res call({
 List<PropertyEntities>? data, String? nextPage
});




}
/// @nodoc
class __$PropertyResponseEntitiesCopyWithImpl<$Res>
    implements _$PropertyResponseEntitiesCopyWith<$Res> {
  __$PropertyResponseEntitiesCopyWithImpl(this._self, this._then);

  final _PropertyResponseEntities _self;
  final $Res Function(_PropertyResponseEntities) _then;

/// Create a copy of PropertyResponseEntities
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? nextPage = freezed,}) {
  return _then(_PropertyResponseEntities(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PropertyEntities>?,nextPage: freezed == nextPage ? _self.nextPage : nextPage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
