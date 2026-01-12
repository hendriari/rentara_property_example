// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PropertyEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PropertyEvent()';
}


}

/// @nodoc
class $PropertyEventCopyWith<$Res>  {
$PropertyEventCopyWith(PropertyEvent _, $Res Function(PropertyEvent) __);
}


/// Adds pattern-matching-related methods to [PropertyEvent].
extension PropertyEventPatterns on PropertyEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PropertyEventGetProperty value)?  getProperty,TResult Function( PropertyEventOnSearchPropertyDebounceInternal value)?  onSearchPropertyDebounceInternal,TResult Function( PropertyEventReset value)?  reset,TResult Function( PropertyEventGetNextProperty value)?  getNextProperty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PropertyEventGetProperty() when getProperty != null:
return getProperty(_that);case PropertyEventOnSearchPropertyDebounceInternal() when onSearchPropertyDebounceInternal != null:
return onSearchPropertyDebounceInternal(_that);case PropertyEventReset() when reset != null:
return reset(_that);case PropertyEventGetNextProperty() when getNextProperty != null:
return getNextProperty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PropertyEventGetProperty value)  getProperty,required TResult Function( PropertyEventOnSearchPropertyDebounceInternal value)  onSearchPropertyDebounceInternal,required TResult Function( PropertyEventReset value)  reset,required TResult Function( PropertyEventGetNextProperty value)  getNextProperty,}){
final _that = this;
switch (_that) {
case PropertyEventGetProperty():
return getProperty(_that);case PropertyEventOnSearchPropertyDebounceInternal():
return onSearchPropertyDebounceInternal(_that);case PropertyEventReset():
return reset(_that);case PropertyEventGetNextProperty():
return getNextProperty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PropertyEventGetProperty value)?  getProperty,TResult? Function( PropertyEventOnSearchPropertyDebounceInternal value)?  onSearchPropertyDebounceInternal,TResult? Function( PropertyEventReset value)?  reset,TResult? Function( PropertyEventGetNextProperty value)?  getNextProperty,}){
final _that = this;
switch (_that) {
case PropertyEventGetProperty() when getProperty != null:
return getProperty(_that);case PropertyEventOnSearchPropertyDebounceInternal() when onSearchPropertyDebounceInternal != null:
return onSearchPropertyDebounceInternal(_that);case PropertyEventReset() when reset != null:
return reset(_that);case PropertyEventGetNextProperty() when getNextProperty != null:
return getNextProperty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String query,  int? perPage,  int? maxPrice,  int? minPrice,  String? status,  String? type)?  getProperty,TResult Function( Either<Failure, PropertyResponseEntities?> result)?  onSearchPropertyDebounceInternal,TResult Function()?  reset,TResult Function()?  getNextProperty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PropertyEventGetProperty() when getProperty != null:
return getProperty(_that.query,_that.perPage,_that.maxPrice,_that.minPrice,_that.status,_that.type);case PropertyEventOnSearchPropertyDebounceInternal() when onSearchPropertyDebounceInternal != null:
return onSearchPropertyDebounceInternal(_that.result);case PropertyEventReset() when reset != null:
return reset();case PropertyEventGetNextProperty() when getNextProperty != null:
return getNextProperty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String query,  int? perPage,  int? maxPrice,  int? minPrice,  String? status,  String? type)  getProperty,required TResult Function( Either<Failure, PropertyResponseEntities?> result)  onSearchPropertyDebounceInternal,required TResult Function()  reset,required TResult Function()  getNextProperty,}) {final _that = this;
switch (_that) {
case PropertyEventGetProperty():
return getProperty(_that.query,_that.perPage,_that.maxPrice,_that.minPrice,_that.status,_that.type);case PropertyEventOnSearchPropertyDebounceInternal():
return onSearchPropertyDebounceInternal(_that.result);case PropertyEventReset():
return reset();case PropertyEventGetNextProperty():
return getNextProperty();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String query,  int? perPage,  int? maxPrice,  int? minPrice,  String? status,  String? type)?  getProperty,TResult? Function( Either<Failure, PropertyResponseEntities?> result)?  onSearchPropertyDebounceInternal,TResult? Function()?  reset,TResult? Function()?  getNextProperty,}) {final _that = this;
switch (_that) {
case PropertyEventGetProperty() when getProperty != null:
return getProperty(_that.query,_that.perPage,_that.maxPrice,_that.minPrice,_that.status,_that.type);case PropertyEventOnSearchPropertyDebounceInternal() when onSearchPropertyDebounceInternal != null:
return onSearchPropertyDebounceInternal(_that.result);case PropertyEventReset() when reset != null:
return reset();case PropertyEventGetNextProperty() when getNextProperty != null:
return getNextProperty();case _:
  return null;

}
}

}

/// @nodoc


class PropertyEventGetProperty implements PropertyEvent {
  const PropertyEventGetProperty({required this.query, this.perPage, this.maxPrice, this.minPrice, this.status, this.type});
  

 final  String query;
 final  int? perPage;
 final  int? maxPrice;
 final  int? minPrice;
 final  String? status;
 final  String? type;

/// Create a copy of PropertyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyEventGetPropertyCopyWith<PropertyEventGetProperty> get copyWith => _$PropertyEventGetPropertyCopyWithImpl<PropertyEventGetProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyEventGetProperty&&(identical(other.query, query) || other.query == query)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,query,perPage,maxPrice,minPrice,status,type);

@override
String toString() {
  return 'PropertyEvent.getProperty(query: $query, perPage: $perPage, maxPrice: $maxPrice, minPrice: $minPrice, status: $status, type: $type)';
}


}

/// @nodoc
abstract mixin class $PropertyEventGetPropertyCopyWith<$Res> implements $PropertyEventCopyWith<$Res> {
  factory $PropertyEventGetPropertyCopyWith(PropertyEventGetProperty value, $Res Function(PropertyEventGetProperty) _then) = _$PropertyEventGetPropertyCopyWithImpl;
@useResult
$Res call({
 String query, int? perPage, int? maxPrice, int? minPrice, String? status, String? type
});




}
/// @nodoc
class _$PropertyEventGetPropertyCopyWithImpl<$Res>
    implements $PropertyEventGetPropertyCopyWith<$Res> {
  _$PropertyEventGetPropertyCopyWithImpl(this._self, this._then);

  final PropertyEventGetProperty _self;
  final $Res Function(PropertyEventGetProperty) _then;

/// Create a copy of PropertyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,Object? perPage = freezed,Object? maxPrice = freezed,Object? minPrice = freezed,Object? status = freezed,Object? type = freezed,}) {
  return _then(PropertyEventGetProperty(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as int?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class PropertyEventOnSearchPropertyDebounceInternal implements PropertyEvent {
  const PropertyEventOnSearchPropertyDebounceInternal({required this.result});
  

 final  Either<Failure, PropertyResponseEntities?> result;

/// Create a copy of PropertyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyEventOnSearchPropertyDebounceInternalCopyWith<PropertyEventOnSearchPropertyDebounceInternal> get copyWith => _$PropertyEventOnSearchPropertyDebounceInternalCopyWithImpl<PropertyEventOnSearchPropertyDebounceInternal>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyEventOnSearchPropertyDebounceInternal&&(identical(other.result, result) || other.result == result));
}


@override
int get hashCode => Object.hash(runtimeType,result);

@override
String toString() {
  return 'PropertyEvent.onSearchPropertyDebounceInternal(result: $result)';
}


}

/// @nodoc
abstract mixin class $PropertyEventOnSearchPropertyDebounceInternalCopyWith<$Res> implements $PropertyEventCopyWith<$Res> {
  factory $PropertyEventOnSearchPropertyDebounceInternalCopyWith(PropertyEventOnSearchPropertyDebounceInternal value, $Res Function(PropertyEventOnSearchPropertyDebounceInternal) _then) = _$PropertyEventOnSearchPropertyDebounceInternalCopyWithImpl;
@useResult
$Res call({
 Either<Failure, PropertyResponseEntities?> result
});




}
/// @nodoc
class _$PropertyEventOnSearchPropertyDebounceInternalCopyWithImpl<$Res>
    implements $PropertyEventOnSearchPropertyDebounceInternalCopyWith<$Res> {
  _$PropertyEventOnSearchPropertyDebounceInternalCopyWithImpl(this._self, this._then);

  final PropertyEventOnSearchPropertyDebounceInternal _self;
  final $Res Function(PropertyEventOnSearchPropertyDebounceInternal) _then;

/// Create a copy of PropertyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? result = null,}) {
  return _then(PropertyEventOnSearchPropertyDebounceInternal(
result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as Either<Failure, PropertyResponseEntities?>,
  ));
}


}

/// @nodoc


class PropertyEventReset implements PropertyEvent {
  const PropertyEventReset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyEventReset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PropertyEvent.reset()';
}


}




/// @nodoc


class PropertyEventGetNextProperty implements PropertyEvent {
  const PropertyEventGetNextProperty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyEventGetNextProperty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PropertyEvent.getNextProperty()';
}


}




// dart format on
