// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_map_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PropertyMapEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyMapEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PropertyMapEvent()';
}


}

/// @nodoc
class $PropertyMapEventCopyWith<$Res>  {
$PropertyMapEventCopyWith(PropertyMapEvent _, $Res Function(PropertyMapEvent) __);
}


/// Adds pattern-matching-related methods to [PropertyMapEvent].
extension PropertyMapEventPatterns on PropertyMapEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetClustering value)?  getClustering,TResult Function( GetBulkProperty value)?  getBulkProperty,TResult Function( GetNextBulkProperty value)?  getNextBulkProperty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetClustering() when getClustering != null:
return getClustering(_that);case GetBulkProperty() when getBulkProperty != null:
return getBulkProperty(_that);case GetNextBulkProperty() when getNextBulkProperty != null:
return getNextBulkProperty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetClustering value)  getClustering,required TResult Function( GetBulkProperty value)  getBulkProperty,required TResult Function( GetNextBulkProperty value)  getNextBulkProperty,}){
final _that = this;
switch (_that) {
case GetClustering():
return getClustering(_that);case GetBulkProperty():
return getBulkProperty(_that);case GetNextBulkProperty():
return getNextBulkProperty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetClustering value)?  getClustering,TResult? Function( GetBulkProperty value)?  getBulkProperty,TResult? Function( GetNextBulkProperty value)?  getNextBulkProperty,}){
final _that = this;
switch (_that) {
case GetClustering() when getClustering != null:
return getClustering(_that);case GetBulkProperty() when getBulkProperty != null:
return getBulkProperty(_that);case GetNextBulkProperty() when getNextBulkProperty != null:
return getNextBulkProperty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( double swLat,  double swLng,  double neLat,  double neLng)?  getClustering,TResult Function( List<int>? ids,  String? viewMode,  String? type,  String? status,  int? perPage,  double? maxPrice,  double? minPrice)?  getBulkProperty,TResult Function()?  getNextBulkProperty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetClustering() when getClustering != null:
return getClustering(_that.swLat,_that.swLng,_that.neLat,_that.neLng);case GetBulkProperty() when getBulkProperty != null:
return getBulkProperty(_that.ids,_that.viewMode,_that.type,_that.status,_that.perPage,_that.maxPrice,_that.minPrice);case GetNextBulkProperty() when getNextBulkProperty != null:
return getNextBulkProperty();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( double swLat,  double swLng,  double neLat,  double neLng)  getClustering,required TResult Function( List<int>? ids,  String? viewMode,  String? type,  String? status,  int? perPage,  double? maxPrice,  double? minPrice)  getBulkProperty,required TResult Function()  getNextBulkProperty,}) {final _that = this;
switch (_that) {
case GetClustering():
return getClustering(_that.swLat,_that.swLng,_that.neLat,_that.neLng);case GetBulkProperty():
return getBulkProperty(_that.ids,_that.viewMode,_that.type,_that.status,_that.perPage,_that.maxPrice,_that.minPrice);case GetNextBulkProperty():
return getNextBulkProperty();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( double swLat,  double swLng,  double neLat,  double neLng)?  getClustering,TResult? Function( List<int>? ids,  String? viewMode,  String? type,  String? status,  int? perPage,  double? maxPrice,  double? minPrice)?  getBulkProperty,TResult? Function()?  getNextBulkProperty,}) {final _that = this;
switch (_that) {
case GetClustering() when getClustering != null:
return getClustering(_that.swLat,_that.swLng,_that.neLat,_that.neLng);case GetBulkProperty() when getBulkProperty != null:
return getBulkProperty(_that.ids,_that.viewMode,_that.type,_that.status,_that.perPage,_that.maxPrice,_that.minPrice);case GetNextBulkProperty() when getNextBulkProperty != null:
return getNextBulkProperty();case _:
  return null;

}
}

}

/// @nodoc


class GetClustering implements PropertyMapEvent {
  const GetClustering({required this.swLat, required this.swLng, required this.neLat, required this.neLng});
  

 final  double swLat;
 final  double swLng;
 final  double neLat;
 final  double neLng;

/// Create a copy of PropertyMapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetClusteringCopyWith<GetClustering> get copyWith => _$GetClusteringCopyWithImpl<GetClustering>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetClustering&&(identical(other.swLat, swLat) || other.swLat == swLat)&&(identical(other.swLng, swLng) || other.swLng == swLng)&&(identical(other.neLat, neLat) || other.neLat == neLat)&&(identical(other.neLng, neLng) || other.neLng == neLng));
}


@override
int get hashCode => Object.hash(runtimeType,swLat,swLng,neLat,neLng);

@override
String toString() {
  return 'PropertyMapEvent.getClustering(swLat: $swLat, swLng: $swLng, neLat: $neLat, neLng: $neLng)';
}


}

/// @nodoc
abstract mixin class $GetClusteringCopyWith<$Res> implements $PropertyMapEventCopyWith<$Res> {
  factory $GetClusteringCopyWith(GetClustering value, $Res Function(GetClustering) _then) = _$GetClusteringCopyWithImpl;
@useResult
$Res call({
 double swLat, double swLng, double neLat, double neLng
});




}
/// @nodoc
class _$GetClusteringCopyWithImpl<$Res>
    implements $GetClusteringCopyWith<$Res> {
  _$GetClusteringCopyWithImpl(this._self, this._then);

  final GetClustering _self;
  final $Res Function(GetClustering) _then;

/// Create a copy of PropertyMapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? swLat = null,Object? swLng = null,Object? neLat = null,Object? neLng = null,}) {
  return _then(GetClustering(
swLat: null == swLat ? _self.swLat : swLat // ignore: cast_nullable_to_non_nullable
as double,swLng: null == swLng ? _self.swLng : swLng // ignore: cast_nullable_to_non_nullable
as double,neLat: null == neLat ? _self.neLat : neLat // ignore: cast_nullable_to_non_nullable
as double,neLng: null == neLng ? _self.neLng : neLng // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

/// @nodoc


class GetBulkProperty implements PropertyMapEvent {
  const GetBulkProperty({final  List<int>? ids, this.viewMode, this.type, this.status, this.perPage, this.maxPrice, this.minPrice}): _ids = ids;
  

 final  List<int>? _ids;
 List<int>? get ids {
  final value = _ids;
  if (value == null) return null;
  if (_ids is EqualUnmodifiableListView) return _ids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  String? viewMode;
 final  String? type;
 final  String? status;
 final  int? perPage;
 final  double? maxPrice;
 final  double? minPrice;

/// Create a copy of PropertyMapEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBulkPropertyCopyWith<GetBulkProperty> get copyWith => _$GetBulkPropertyCopyWithImpl<GetBulkProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBulkProperty&&const DeepCollectionEquality().equals(other._ids, _ids)&&(identical(other.viewMode, viewMode) || other.viewMode == viewMode)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.maxPrice, maxPrice) || other.maxPrice == maxPrice)&&(identical(other.minPrice, minPrice) || other.minPrice == minPrice));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_ids),viewMode,type,status,perPage,maxPrice,minPrice);

@override
String toString() {
  return 'PropertyMapEvent.getBulkProperty(ids: $ids, viewMode: $viewMode, type: $type, status: $status, perPage: $perPage, maxPrice: $maxPrice, minPrice: $minPrice)';
}


}

/// @nodoc
abstract mixin class $GetBulkPropertyCopyWith<$Res> implements $PropertyMapEventCopyWith<$Res> {
  factory $GetBulkPropertyCopyWith(GetBulkProperty value, $Res Function(GetBulkProperty) _then) = _$GetBulkPropertyCopyWithImpl;
@useResult
$Res call({
 List<int>? ids, String? viewMode, String? type, String? status, int? perPage, double? maxPrice, double? minPrice
});




}
/// @nodoc
class _$GetBulkPropertyCopyWithImpl<$Res>
    implements $GetBulkPropertyCopyWith<$Res> {
  _$GetBulkPropertyCopyWithImpl(this._self, this._then);

  final GetBulkProperty _self;
  final $Res Function(GetBulkProperty) _then;

/// Create a copy of PropertyMapEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ids = freezed,Object? viewMode = freezed,Object? type = freezed,Object? status = freezed,Object? perPage = freezed,Object? maxPrice = freezed,Object? minPrice = freezed,}) {
  return _then(GetBulkProperty(
ids: freezed == ids ? _self._ids : ids // ignore: cast_nullable_to_non_nullable
as List<int>?,viewMode: freezed == viewMode ? _self.viewMode : viewMode // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,maxPrice: freezed == maxPrice ? _self.maxPrice : maxPrice // ignore: cast_nullable_to_non_nullable
as double?,minPrice: freezed == minPrice ? _self.minPrice : minPrice // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class GetNextBulkProperty implements PropertyMapEvent {
  const GetNextBulkProperty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetNextBulkProperty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PropertyMapEvent.getNextBulkProperty()';
}


}




// dart format on
