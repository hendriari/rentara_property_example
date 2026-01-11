// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PropertyFilterState {

 String? get status; List<String>? get location; List<String>? get type; double? get minPrice; double? get maxPrice;
/// Create a copy of PropertyFilterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyFilterStateCopyWith<PropertyFilterState> get copyWith => _$PropertyFilterStateCopyWithImpl<PropertyFilterState>(this as PropertyFilterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyFilterState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.location, location)&&const DeepCollectionEquality().equals(other.type, type)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(location),const DeepCollectionEquality().hash(type),minPrice,maxPrice);

@override
String toString() {
  return 'PropertyFilterState(status: $status, location: $location, type: $type, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class $PropertyFilterStateCopyWith<$Res>  {
  factory $PropertyFilterStateCopyWith(PropertyFilterState value, $Res Function(PropertyFilterState) _then) = _$PropertyFilterStateCopyWithImpl;
@useResult
$Res call({
 String? status, List<String>? location, List<String>? type, double? minPrice, double? maxPrice
});




}
/// @nodoc
class _$PropertyFilterStateCopyWithImpl<$Res>
    implements $PropertyFilterStateCopyWith<$Res> {
  _$PropertyFilterStateCopyWithImpl(this._self, this._then);

  final PropertyFilterState _self;
  final $Res Function(PropertyFilterState) _then;

/// Create a copy of PropertyFilterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? location = freezed,Object? type = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_self.copyWith(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as List<String>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyFilterState].
extension PropertyFilterStatePatterns on PropertyFilterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  initial,TResult Function( _UpdatedFilter value)?  updatedFilter,TResult Function( _ResetFilter value)?  resetFilter,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when initial != null:
return initial(_that);case _UpdatedFilter() when updatedFilter != null:
return updatedFilter(_that);case _ResetFilter() when resetFilter != null:
return resetFilter(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  initial,required TResult Function( _UpdatedFilter value)  updatedFilter,required TResult Function( _ResetFilter value)  resetFilter,}){
final _that = this;
switch (_that) {
case _Init():
return initial(_that);case _UpdatedFilter():
return updatedFilter(_that);case _ResetFilter():
return resetFilter(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  initial,TResult? Function( _UpdatedFilter value)?  updatedFilter,TResult? Function( _ResetFilter value)?  resetFilter,}){
final _that = this;
switch (_that) {
case _Init() when initial != null:
return initial(_that);case _UpdatedFilter() when updatedFilter != null:
return updatedFilter(_that);case _ResetFilter() when resetFilter != null:
return resetFilter(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)?  initial,TResult Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)?  updatedFilter,TResult Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)?  resetFilter,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when initial != null:
return initial(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _UpdatedFilter() when updatedFilter != null:
return updatedFilter(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _ResetFilter() when resetFilter != null:
return resetFilter(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)  initial,required TResult Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)  updatedFilter,required TResult Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)  resetFilter,}) {final _that = this;
switch (_that) {
case _Init():
return initial(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _UpdatedFilter():
return updatedFilter(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _ResetFilter():
return resetFilter(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)?  initial,TResult? Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)?  updatedFilter,TResult? Function( String? status,  List<String>? location,  List<String>? type,  double? minPrice,  double? maxPrice)?  resetFilter,}) {final _that = this;
switch (_that) {
case _Init() when initial != null:
return initial(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _UpdatedFilter() when updatedFilter != null:
return updatedFilter(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _ResetFilter() when resetFilter != null:
return resetFilter(_that.status,_that.location,_that.type,_that.minPrice,_that.maxPrice);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements PropertyFilterState {
   _Init({this.status = null, final  List<String>? location = null, final  List<String>? type = null, this.minPrice = null, this.maxPrice = null}): _location = location,_type = type;
  

@override@JsonKey() final  String? status;
 final  List<String>? _location;
@override@JsonKey() List<String>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableListView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _type;
@override@JsonKey() List<String>? get type {
  final value = _type;
  if (value == null) return null;
  if (_type is EqualUnmodifiableListView) return _type;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  double? minPrice;
@override@JsonKey() final  double? maxPrice;

/// Create a copy of PropertyFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._location, _location)&&const DeepCollectionEquality().equals(other._type, _type)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_location),const DeepCollectionEquality().hash(_type),minPrice,maxPrice);

@override
String toString() {
  return 'PropertyFilterState.initial(status: $status, location: $location, type: $type, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $PropertyFilterStateCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@override @useResult
$Res call({
 String? status, List<String>? location, List<String>? type, double? minPrice, double? maxPrice
});




}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of PropertyFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? location = freezed,Object? type = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_Init(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self._type : type // ignore: cast_nullable_to_non_nullable
as List<String>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class _UpdatedFilter implements PropertyFilterState {
   _UpdatedFilter({this.status = null, final  List<String>? location = null, final  List<String>? type = null, this.minPrice = null, this.maxPrice = null}): _location = location,_type = type;
  

@override@JsonKey() final  String? status;
 final  List<String>? _location;
@override@JsonKey() List<String>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableListView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _type;
@override@JsonKey() List<String>? get type {
  final value = _type;
  if (value == null) return null;
  if (_type is EqualUnmodifiableListView) return _type;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  double? minPrice;
@override@JsonKey() final  double? maxPrice;

/// Create a copy of PropertyFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatedFilterCopyWith<_UpdatedFilter> get copyWith => __$UpdatedFilterCopyWithImpl<_UpdatedFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatedFilter&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._location, _location)&&const DeepCollectionEquality().equals(other._type, _type)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_location),const DeepCollectionEquality().hash(_type),minPrice,maxPrice);

@override
String toString() {
  return 'PropertyFilterState.updatedFilter(status: $status, location: $location, type: $type, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class _$UpdatedFilterCopyWith<$Res> implements $PropertyFilterStateCopyWith<$Res> {
  factory _$UpdatedFilterCopyWith(_UpdatedFilter value, $Res Function(_UpdatedFilter) _then) = __$UpdatedFilterCopyWithImpl;
@override @useResult
$Res call({
 String? status, List<String>? location, List<String>? type, double? minPrice, double? maxPrice
});




}
/// @nodoc
class __$UpdatedFilterCopyWithImpl<$Res>
    implements _$UpdatedFilterCopyWith<$Res> {
  __$UpdatedFilterCopyWithImpl(this._self, this._then);

  final _UpdatedFilter _self;
  final $Res Function(_UpdatedFilter) _then;

/// Create a copy of PropertyFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? location = freezed,Object? type = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_UpdatedFilter(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self._type : type // ignore: cast_nullable_to_non_nullable
as List<String>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class _ResetFilter implements PropertyFilterState {
   _ResetFilter({this.status = null, final  List<String>? location = null, final  List<String>? type = null, this.minPrice = null, this.maxPrice = null}): _location = location,_type = type;
  

@override@JsonKey() final  String? status;
 final  List<String>? _location;
@override@JsonKey() List<String>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableListView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _type;
@override@JsonKey() List<String>? get type {
  final value = _type;
  if (value == null) return null;
  if (_type is EqualUnmodifiableListView) return _type;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  double? minPrice;
@override@JsonKey() final  double? maxPrice;

/// Create a copy of PropertyFilterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetFilterCopyWith<_ResetFilter> get copyWith => __$ResetFilterCopyWithImpl<_ResetFilter>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetFilter&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._location, _location)&&const DeepCollectionEquality().equals(other._type, _type)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_location),const DeepCollectionEquality().hash(_type),minPrice,maxPrice);

@override
String toString() {
  return 'PropertyFilterState.resetFilter(status: $status, location: $location, type: $type, minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class _$ResetFilterCopyWith<$Res> implements $PropertyFilterStateCopyWith<$Res> {
  factory _$ResetFilterCopyWith(_ResetFilter value, $Res Function(_ResetFilter) _then) = __$ResetFilterCopyWithImpl;
@override @useResult
$Res call({
 String? status, List<String>? location, List<String>? type, double? minPrice, double? maxPrice
});




}
/// @nodoc
class __$ResetFilterCopyWithImpl<$Res>
    implements _$ResetFilterCopyWith<$Res> {
  __$ResetFilterCopyWithImpl(this._self, this._then);

  final _ResetFilter _self;
  final $Res Function(_ResetFilter) _then;

/// Create a copy of PropertyFilterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? location = freezed,Object? type = freezed,Object? minPrice = freezed,Object? maxPrice = freezed,}) {
  return _then(_ResetFilter(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as List<String>?,type: freezed == type ? _self._type : type // ignore: cast_nullable_to_non_nullable
as List<String>?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
