// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_filter_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PropertyFilterEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyFilterEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PropertyFilterEvent()';
}


}

/// @nodoc
class $PropertyFilterEventCopyWith<$Res>  {
$PropertyFilterEventCopyWith(PropertyFilterEvent _, $Res Function(PropertyFilterEvent) __);
}


/// Adds pattern-matching-related methods to [PropertyFilterEvent].
extension PropertyFilterEventPatterns on PropertyFilterEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PropertyFilterUpdateStatusEvent value)?  updateStatus,TResult Function( PropertyFilterUpdateLocationEvent value)?  updateLocation,TResult Function( PropertyFilterUpdateTypeEvent value)?  updateType,TResult Function( PropertyFilterUpdatePriceEvent value)?  updatePrice,TResult Function( PropertyFilterResetEvent value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PropertyFilterUpdateStatusEvent() when updateStatus != null:
return updateStatus(_that);case PropertyFilterUpdateLocationEvent() when updateLocation != null:
return updateLocation(_that);case PropertyFilterUpdateTypeEvent() when updateType != null:
return updateType(_that);case PropertyFilterUpdatePriceEvent() when updatePrice != null:
return updatePrice(_that);case PropertyFilterResetEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PropertyFilterUpdateStatusEvent value)  updateStatus,required TResult Function( PropertyFilterUpdateLocationEvent value)  updateLocation,required TResult Function( PropertyFilterUpdateTypeEvent value)  updateType,required TResult Function( PropertyFilterUpdatePriceEvent value)  updatePrice,required TResult Function( PropertyFilterResetEvent value)  reset,}){
final _that = this;
switch (_that) {
case PropertyFilterUpdateStatusEvent():
return updateStatus(_that);case PropertyFilterUpdateLocationEvent():
return updateLocation(_that);case PropertyFilterUpdateTypeEvent():
return updateType(_that);case PropertyFilterUpdatePriceEvent():
return updatePrice(_that);case PropertyFilterResetEvent():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PropertyFilterUpdateStatusEvent value)?  updateStatus,TResult? Function( PropertyFilterUpdateLocationEvent value)?  updateLocation,TResult? Function( PropertyFilterUpdateTypeEvent value)?  updateType,TResult? Function( PropertyFilterUpdatePriceEvent value)?  updatePrice,TResult? Function( PropertyFilterResetEvent value)?  reset,}){
final _that = this;
switch (_that) {
case PropertyFilterUpdateStatusEvent() when updateStatus != null:
return updateStatus(_that);case PropertyFilterUpdateLocationEvent() when updateLocation != null:
return updateLocation(_that);case PropertyFilterUpdateTypeEvent() when updateType != null:
return updateType(_that);case PropertyFilterUpdatePriceEvent() when updatePrice != null:
return updatePrice(_that);case PropertyFilterResetEvent() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String status)?  updateStatus,TResult Function( List<String> location)?  updateLocation,TResult Function( List<String> type)?  updateType,TResult Function( double minPrice,  double maxPrice)?  updatePrice,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PropertyFilterUpdateStatusEvent() when updateStatus != null:
return updateStatus(_that.status);case PropertyFilterUpdateLocationEvent() when updateLocation != null:
return updateLocation(_that.location);case PropertyFilterUpdateTypeEvent() when updateType != null:
return updateType(_that.type);case PropertyFilterUpdatePriceEvent() when updatePrice != null:
return updatePrice(_that.minPrice,_that.maxPrice);case PropertyFilterResetEvent() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String status)  updateStatus,required TResult Function( List<String> location)  updateLocation,required TResult Function( List<String> type)  updateType,required TResult Function( double minPrice,  double maxPrice)  updatePrice,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case PropertyFilterUpdateStatusEvent():
return updateStatus(_that.status);case PropertyFilterUpdateLocationEvent():
return updateLocation(_that.location);case PropertyFilterUpdateTypeEvent():
return updateType(_that.type);case PropertyFilterUpdatePriceEvent():
return updatePrice(_that.minPrice,_that.maxPrice);case PropertyFilterResetEvent():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String status)?  updateStatus,TResult? Function( List<String> location)?  updateLocation,TResult? Function( List<String> type)?  updateType,TResult? Function( double minPrice,  double maxPrice)?  updatePrice,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case PropertyFilterUpdateStatusEvent() when updateStatus != null:
return updateStatus(_that.status);case PropertyFilterUpdateLocationEvent() when updateLocation != null:
return updateLocation(_that.location);case PropertyFilterUpdateTypeEvent() when updateType != null:
return updateType(_that.type);case PropertyFilterUpdatePriceEvent() when updatePrice != null:
return updatePrice(_that.minPrice,_that.maxPrice);case PropertyFilterResetEvent() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class PropertyFilterUpdateStatusEvent implements PropertyFilterEvent {
   PropertyFilterUpdateStatusEvent({required this.status});
  

 final  String status;

/// Create a copy of PropertyFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyFilterUpdateStatusEventCopyWith<PropertyFilterUpdateStatusEvent> get copyWith => _$PropertyFilterUpdateStatusEventCopyWithImpl<PropertyFilterUpdateStatusEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyFilterUpdateStatusEvent&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'PropertyFilterEvent.updateStatus(status: $status)';
}


}

/// @nodoc
abstract mixin class $PropertyFilterUpdateStatusEventCopyWith<$Res> implements $PropertyFilterEventCopyWith<$Res> {
  factory $PropertyFilterUpdateStatusEventCopyWith(PropertyFilterUpdateStatusEvent value, $Res Function(PropertyFilterUpdateStatusEvent) _then) = _$PropertyFilterUpdateStatusEventCopyWithImpl;
@useResult
$Res call({
 String status
});




}
/// @nodoc
class _$PropertyFilterUpdateStatusEventCopyWithImpl<$Res>
    implements $PropertyFilterUpdateStatusEventCopyWith<$Res> {
  _$PropertyFilterUpdateStatusEventCopyWithImpl(this._self, this._then);

  final PropertyFilterUpdateStatusEvent _self;
  final $Res Function(PropertyFilterUpdateStatusEvent) _then;

/// Create a copy of PropertyFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(PropertyFilterUpdateStatusEvent(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PropertyFilterUpdateLocationEvent implements PropertyFilterEvent {
   PropertyFilterUpdateLocationEvent({required final  List<String> location}): _location = location;
  

 final  List<String> _location;
 List<String> get location {
  if (_location is EqualUnmodifiableListView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_location);
}


/// Create a copy of PropertyFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyFilterUpdateLocationEventCopyWith<PropertyFilterUpdateLocationEvent> get copyWith => _$PropertyFilterUpdateLocationEventCopyWithImpl<PropertyFilterUpdateLocationEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyFilterUpdateLocationEvent&&const DeepCollectionEquality().equals(other._location, _location));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_location));

@override
String toString() {
  return 'PropertyFilterEvent.updateLocation(location: $location)';
}


}

/// @nodoc
abstract mixin class $PropertyFilterUpdateLocationEventCopyWith<$Res> implements $PropertyFilterEventCopyWith<$Res> {
  factory $PropertyFilterUpdateLocationEventCopyWith(PropertyFilterUpdateLocationEvent value, $Res Function(PropertyFilterUpdateLocationEvent) _then) = _$PropertyFilterUpdateLocationEventCopyWithImpl;
@useResult
$Res call({
 List<String> location
});




}
/// @nodoc
class _$PropertyFilterUpdateLocationEventCopyWithImpl<$Res>
    implements $PropertyFilterUpdateLocationEventCopyWith<$Res> {
  _$PropertyFilterUpdateLocationEventCopyWithImpl(this._self, this._then);

  final PropertyFilterUpdateLocationEvent _self;
  final $Res Function(PropertyFilterUpdateLocationEvent) _then;

/// Create a copy of PropertyFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = null,}) {
  return _then(PropertyFilterUpdateLocationEvent(
location: null == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class PropertyFilterUpdateTypeEvent implements PropertyFilterEvent {
   PropertyFilterUpdateTypeEvent({required final  List<String> type}): _type = type;
  

 final  List<String> _type;
 List<String> get type {
  if (_type is EqualUnmodifiableListView) return _type;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_type);
}


/// Create a copy of PropertyFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyFilterUpdateTypeEventCopyWith<PropertyFilterUpdateTypeEvent> get copyWith => _$PropertyFilterUpdateTypeEventCopyWithImpl<PropertyFilterUpdateTypeEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyFilterUpdateTypeEvent&&const DeepCollectionEquality().equals(other._type, _type));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_type));

@override
String toString() {
  return 'PropertyFilterEvent.updateType(type: $type)';
}


}

/// @nodoc
abstract mixin class $PropertyFilterUpdateTypeEventCopyWith<$Res> implements $PropertyFilterEventCopyWith<$Res> {
  factory $PropertyFilterUpdateTypeEventCopyWith(PropertyFilterUpdateTypeEvent value, $Res Function(PropertyFilterUpdateTypeEvent) _then) = _$PropertyFilterUpdateTypeEventCopyWithImpl;
@useResult
$Res call({
 List<String> type
});




}
/// @nodoc
class _$PropertyFilterUpdateTypeEventCopyWithImpl<$Res>
    implements $PropertyFilterUpdateTypeEventCopyWith<$Res> {
  _$PropertyFilterUpdateTypeEventCopyWithImpl(this._self, this._then);

  final PropertyFilterUpdateTypeEvent _self;
  final $Res Function(PropertyFilterUpdateTypeEvent) _then;

/// Create a copy of PropertyFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? type = null,}) {
  return _then(PropertyFilterUpdateTypeEvent(
type: null == type ? _self._type : type // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class PropertyFilterUpdatePriceEvent implements PropertyFilterEvent {
   PropertyFilterUpdatePriceEvent({required this.minPrice, required this.maxPrice});
  

 final  double minPrice;
 final  double maxPrice;

/// Create a copy of PropertyFilterEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyFilterUpdatePriceEventCopyWith<PropertyFilterUpdatePriceEvent> get copyWith => _$PropertyFilterUpdatePriceEventCopyWithImpl<PropertyFilterUpdatePriceEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyFilterUpdatePriceEvent&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice));
}


@override
int get hashCode => Object.hash(runtimeType,minPrice,maxPrice);

@override
String toString() {
  return 'PropertyFilterEvent.updatePrice(minPrice: $minPrice, maxPrice: $maxPrice)';
}


}

/// @nodoc
abstract mixin class $PropertyFilterUpdatePriceEventCopyWith<$Res> implements $PropertyFilterEventCopyWith<$Res> {
  factory $PropertyFilterUpdatePriceEventCopyWith(PropertyFilterUpdatePriceEvent value, $Res Function(PropertyFilterUpdatePriceEvent) _then) = _$PropertyFilterUpdatePriceEventCopyWithImpl;
@useResult
$Res call({
 double minPrice, double maxPrice
});




}
/// @nodoc
class _$PropertyFilterUpdatePriceEventCopyWithImpl<$Res>
    implements $PropertyFilterUpdatePriceEventCopyWith<$Res> {
  _$PropertyFilterUpdatePriceEventCopyWithImpl(this._self, this._then);

  final PropertyFilterUpdatePriceEvent _self;
  final $Res Function(PropertyFilterUpdatePriceEvent) _then;

/// Create a copy of PropertyFilterEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? minPrice = null,Object? maxPrice = null,}) {
  return _then(PropertyFilterUpdatePriceEvent(
minPrice: null == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double,maxPrice: null == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class PropertyFilterResetEvent implements PropertyFilterEvent {
   PropertyFilterResetEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyFilterResetEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PropertyFilterEvent.reset()';
}


}




// dart format on
