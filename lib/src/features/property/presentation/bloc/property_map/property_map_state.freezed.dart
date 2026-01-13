// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_map_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PropertyMapState {

 List<int>? get currPropertyIds; PropertyResponseEntities? get property;
/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyMapStateCopyWith<PropertyMapState> get copyWith => _$PropertyMapStateCopyWithImpl<PropertyMapState>(this as PropertyMapState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyMapState&&const DeepCollectionEquality().equals(other.currPropertyIds, currPropertyIds)&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(currPropertyIds),property);

@override
String toString() {
  return 'PropertyMapState(currPropertyIds: $currPropertyIds, property: $property)';
}


}

/// @nodoc
abstract mixin class $PropertyMapStateCopyWith<$Res>  {
  factory $PropertyMapStateCopyWith(PropertyMapState value, $Res Function(PropertyMapState) _then) = _$PropertyMapStateCopyWithImpl;
@useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property
});


$PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class _$PropertyMapStateCopyWithImpl<$Res>
    implements $PropertyMapStateCopyWith<$Res> {
  _$PropertyMapStateCopyWithImpl(this._self, this._then);

  final PropertyMapState _self;
  final $Res Function(PropertyMapState) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currPropertyIds = freezed,Object? property = freezed,}) {
  return _then(_self.copyWith(
currPropertyIds: freezed == currPropertyIds ? _self.currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}
/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}


/// Adds pattern-matching-related methods to [PropertyMapState].
extension PropertyMapStatePatterns on PropertyMapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _LoadingGetClustering value)?  loadingGetClustering,TResult Function( _SuccessGetClustering value)?  successGetClustering,TResult Function( _FailedGetClustering value)?  failedGetClustering,TResult Function( _LoadingGetBulkProperty value)?  loadingGetBulkProperty,TResult Function( _SuccessGetBulkProperty value)?  successGetBulkProperty,TResult Function( _FailedGetBulkProperty value)?  failedGetBulkProperty,TResult Function( _LoadingGetNextBulkProperty value)?  loadingGetNextBulkProperty,TResult Function( _SuccessGetNextBulkProperty value)?  successGetNextBulkProperty,TResult Function( _FailedGetNextBulkProperty value)?  failedGetNextBulkProperty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadingGetClustering() when loadingGetClustering != null:
return loadingGetClustering(_that);case _SuccessGetClustering() when successGetClustering != null:
return successGetClustering(_that);case _FailedGetClustering() when failedGetClustering != null:
return failedGetClustering(_that);case _LoadingGetBulkProperty() when loadingGetBulkProperty != null:
return loadingGetBulkProperty(_that);case _SuccessGetBulkProperty() when successGetBulkProperty != null:
return successGetBulkProperty(_that);case _FailedGetBulkProperty() when failedGetBulkProperty != null:
return failedGetBulkProperty(_that);case _LoadingGetNextBulkProperty() when loadingGetNextBulkProperty != null:
return loadingGetNextBulkProperty(_that);case _SuccessGetNextBulkProperty() when successGetNextBulkProperty != null:
return successGetNextBulkProperty(_that);case _FailedGetNextBulkProperty() when failedGetNextBulkProperty != null:
return failedGetNextBulkProperty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _LoadingGetClustering value)  loadingGetClustering,required TResult Function( _SuccessGetClustering value)  successGetClustering,required TResult Function( _FailedGetClustering value)  failedGetClustering,required TResult Function( _LoadingGetBulkProperty value)  loadingGetBulkProperty,required TResult Function( _SuccessGetBulkProperty value)  successGetBulkProperty,required TResult Function( _FailedGetBulkProperty value)  failedGetBulkProperty,required TResult Function( _LoadingGetNextBulkProperty value)  loadingGetNextBulkProperty,required TResult Function( _SuccessGetNextBulkProperty value)  successGetNextBulkProperty,required TResult Function( _FailedGetNextBulkProperty value)  failedGetNextBulkProperty,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _LoadingGetClustering():
return loadingGetClustering(_that);case _SuccessGetClustering():
return successGetClustering(_that);case _FailedGetClustering():
return failedGetClustering(_that);case _LoadingGetBulkProperty():
return loadingGetBulkProperty(_that);case _SuccessGetBulkProperty():
return successGetBulkProperty(_that);case _FailedGetBulkProperty():
return failedGetBulkProperty(_that);case _LoadingGetNextBulkProperty():
return loadingGetNextBulkProperty(_that);case _SuccessGetNextBulkProperty():
return successGetNextBulkProperty(_that);case _FailedGetNextBulkProperty():
return failedGetNextBulkProperty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _LoadingGetClustering value)?  loadingGetClustering,TResult? Function( _SuccessGetClustering value)?  successGetClustering,TResult? Function( _FailedGetClustering value)?  failedGetClustering,TResult? Function( _LoadingGetBulkProperty value)?  loadingGetBulkProperty,TResult? Function( _SuccessGetBulkProperty value)?  successGetBulkProperty,TResult? Function( _FailedGetBulkProperty value)?  failedGetBulkProperty,TResult? Function( _LoadingGetNextBulkProperty value)?  loadingGetNextBulkProperty,TResult? Function( _SuccessGetNextBulkProperty value)?  successGetNextBulkProperty,TResult? Function( _FailedGetNextBulkProperty value)?  failedGetNextBulkProperty,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadingGetClustering() when loadingGetClustering != null:
return loadingGetClustering(_that);case _SuccessGetClustering() when successGetClustering != null:
return successGetClustering(_that);case _FailedGetClustering() when failedGetClustering != null:
return failedGetClustering(_that);case _LoadingGetBulkProperty() when loadingGetBulkProperty != null:
return loadingGetBulkProperty(_that);case _SuccessGetBulkProperty() when successGetBulkProperty != null:
return successGetBulkProperty(_that);case _FailedGetBulkProperty() when failedGetBulkProperty != null:
return failedGetBulkProperty(_that);case _LoadingGetNextBulkProperty() when loadingGetNextBulkProperty != null:
return loadingGetNextBulkProperty(_that);case _SuccessGetNextBulkProperty() when successGetNextBulkProperty != null:
return successGetNextBulkProperty(_that);case _FailedGetNextBulkProperty() when failedGetNextBulkProperty != null:
return failedGetNextBulkProperty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  init,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  loadingGetClustering,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  successGetClustering,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)?  failedGetClustering,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  loadingGetBulkProperty,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  successGetBulkProperty,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)?  failedGetBulkProperty,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  loadingGetNextBulkProperty,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  successGetNextBulkProperty,TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)?  failedGetNextBulkProperty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.currPropertyIds,_that.property);case _LoadingGetClustering() when loadingGetClustering != null:
return loadingGetClustering(_that.currPropertyIds,_that.property);case _SuccessGetClustering() when successGetClustering != null:
return successGetClustering(_that.currPropertyIds,_that.property);case _FailedGetClustering() when failedGetClustering != null:
return failedGetClustering(_that.currPropertyIds,_that.property,_that.message);case _LoadingGetBulkProperty() when loadingGetBulkProperty != null:
return loadingGetBulkProperty(_that.currPropertyIds,_that.property);case _SuccessGetBulkProperty() when successGetBulkProperty != null:
return successGetBulkProperty(_that.currPropertyIds,_that.property);case _FailedGetBulkProperty() when failedGetBulkProperty != null:
return failedGetBulkProperty(_that.currPropertyIds,_that.property,_that.message);case _LoadingGetNextBulkProperty() when loadingGetNextBulkProperty != null:
return loadingGetNextBulkProperty(_that.currPropertyIds,_that.property);case _SuccessGetNextBulkProperty() when successGetNextBulkProperty != null:
return successGetNextBulkProperty(_that.currPropertyIds,_that.property);case _FailedGetNextBulkProperty() when failedGetNextBulkProperty != null:
return failedGetNextBulkProperty(_that.currPropertyIds,_that.property,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)  init,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)  loadingGetClustering,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)  successGetClustering,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)  failedGetClustering,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)  loadingGetBulkProperty,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)  successGetBulkProperty,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)  failedGetBulkProperty,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)  loadingGetNextBulkProperty,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)  successGetNextBulkProperty,required TResult Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)  failedGetNextBulkProperty,}) {final _that = this;
switch (_that) {
case _Init():
return init(_that.currPropertyIds,_that.property);case _LoadingGetClustering():
return loadingGetClustering(_that.currPropertyIds,_that.property);case _SuccessGetClustering():
return successGetClustering(_that.currPropertyIds,_that.property);case _FailedGetClustering():
return failedGetClustering(_that.currPropertyIds,_that.property,_that.message);case _LoadingGetBulkProperty():
return loadingGetBulkProperty(_that.currPropertyIds,_that.property);case _SuccessGetBulkProperty():
return successGetBulkProperty(_that.currPropertyIds,_that.property);case _FailedGetBulkProperty():
return failedGetBulkProperty(_that.currPropertyIds,_that.property,_that.message);case _LoadingGetNextBulkProperty():
return loadingGetNextBulkProperty(_that.currPropertyIds,_that.property);case _SuccessGetNextBulkProperty():
return successGetNextBulkProperty(_that.currPropertyIds,_that.property);case _FailedGetNextBulkProperty():
return failedGetNextBulkProperty(_that.currPropertyIds,_that.property,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  init,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  loadingGetClustering,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  successGetClustering,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)?  failedGetClustering,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  loadingGetBulkProperty,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  successGetBulkProperty,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)?  failedGetBulkProperty,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  loadingGetNextBulkProperty,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property)?  successGetNextBulkProperty,TResult? Function( List<int>? currPropertyIds,  PropertyResponseEntities? property,  String message)?  failedGetNextBulkProperty,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.currPropertyIds,_that.property);case _LoadingGetClustering() when loadingGetClustering != null:
return loadingGetClustering(_that.currPropertyIds,_that.property);case _SuccessGetClustering() when successGetClustering != null:
return successGetClustering(_that.currPropertyIds,_that.property);case _FailedGetClustering() when failedGetClustering != null:
return failedGetClustering(_that.currPropertyIds,_that.property,_that.message);case _LoadingGetBulkProperty() when loadingGetBulkProperty != null:
return loadingGetBulkProperty(_that.currPropertyIds,_that.property);case _SuccessGetBulkProperty() when successGetBulkProperty != null:
return successGetBulkProperty(_that.currPropertyIds,_that.property);case _FailedGetBulkProperty() when failedGetBulkProperty != null:
return failedGetBulkProperty(_that.currPropertyIds,_that.property,_that.message);case _LoadingGetNextBulkProperty() when loadingGetNextBulkProperty != null:
return loadingGetNextBulkProperty(_that.currPropertyIds,_that.property);case _SuccessGetNextBulkProperty() when successGetNextBulkProperty != null:
return successGetNextBulkProperty(_that.currPropertyIds,_that.property);case _FailedGetNextBulkProperty() when failedGetNextBulkProperty != null:
return failedGetNextBulkProperty(_that.currPropertyIds,_that.property,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements PropertyMapState {
   _Init({final  List<int>? currPropertyIds = null, this.property = null}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property);

@override
String toString() {
  return 'PropertyMapState.init(currPropertyIds: $currPropertyIds, property: $property)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,}) {
  return _then(_Init(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _LoadingGetClustering implements PropertyMapState {
   _LoadingGetClustering({final  List<int>? currPropertyIds = null, this.property = null}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingGetClusteringCopyWith<_LoadingGetClustering> get copyWith => __$LoadingGetClusteringCopyWithImpl<_LoadingGetClustering>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingGetClustering&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property);

@override
String toString() {
  return 'PropertyMapState.loadingGetClustering(currPropertyIds: $currPropertyIds, property: $property)';
}


}

/// @nodoc
abstract mixin class _$LoadingGetClusteringCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$LoadingGetClusteringCopyWith(_LoadingGetClustering value, $Res Function(_LoadingGetClustering) _then) = __$LoadingGetClusteringCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$LoadingGetClusteringCopyWithImpl<$Res>
    implements _$LoadingGetClusteringCopyWith<$Res> {
  __$LoadingGetClusteringCopyWithImpl(this._self, this._then);

  final _LoadingGetClustering _self;
  final $Res Function(_LoadingGetClustering) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,}) {
  return _then(_LoadingGetClustering(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _SuccessGetClustering implements PropertyMapState {
   _SuccessGetClustering({final  List<int>? currPropertyIds = null, this.property = null}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessGetClusteringCopyWith<_SuccessGetClustering> get copyWith => __$SuccessGetClusteringCopyWithImpl<_SuccessGetClustering>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessGetClustering&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property);

@override
String toString() {
  return 'PropertyMapState.successGetClustering(currPropertyIds: $currPropertyIds, property: $property)';
}


}

/// @nodoc
abstract mixin class _$SuccessGetClusteringCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$SuccessGetClusteringCopyWith(_SuccessGetClustering value, $Res Function(_SuccessGetClustering) _then) = __$SuccessGetClusteringCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$SuccessGetClusteringCopyWithImpl<$Res>
    implements _$SuccessGetClusteringCopyWith<$Res> {
  __$SuccessGetClusteringCopyWithImpl(this._self, this._then);

  final _SuccessGetClustering _self;
  final $Res Function(_SuccessGetClustering) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,}) {
  return _then(_SuccessGetClustering(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _FailedGetClustering implements PropertyMapState {
   _FailedGetClustering({final  List<int>? currPropertyIds = null, this.property = null, required this.message}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;
 final  String message;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedGetClusteringCopyWith<_FailedGetClustering> get copyWith => __$FailedGetClusteringCopyWithImpl<_FailedGetClustering>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailedGetClustering&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property,message);

@override
String toString() {
  return 'PropertyMapState.failedGetClustering(currPropertyIds: $currPropertyIds, property: $property, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedGetClusteringCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$FailedGetClusteringCopyWith(_FailedGetClustering value, $Res Function(_FailedGetClustering) _then) = __$FailedGetClusteringCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property, String message
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$FailedGetClusteringCopyWithImpl<$Res>
    implements _$FailedGetClusteringCopyWith<$Res> {
  __$FailedGetClusteringCopyWithImpl(this._self, this._then);

  final _FailedGetClustering _self;
  final $Res Function(_FailedGetClustering) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,Object? message = null,}) {
  return _then(_FailedGetClustering(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _LoadingGetBulkProperty implements PropertyMapState {
   _LoadingGetBulkProperty({final  List<int>? currPropertyIds = null, this.property = null}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingGetBulkPropertyCopyWith<_LoadingGetBulkProperty> get copyWith => __$LoadingGetBulkPropertyCopyWithImpl<_LoadingGetBulkProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingGetBulkProperty&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property);

@override
String toString() {
  return 'PropertyMapState.loadingGetBulkProperty(currPropertyIds: $currPropertyIds, property: $property)';
}


}

/// @nodoc
abstract mixin class _$LoadingGetBulkPropertyCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$LoadingGetBulkPropertyCopyWith(_LoadingGetBulkProperty value, $Res Function(_LoadingGetBulkProperty) _then) = __$LoadingGetBulkPropertyCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$LoadingGetBulkPropertyCopyWithImpl<$Res>
    implements _$LoadingGetBulkPropertyCopyWith<$Res> {
  __$LoadingGetBulkPropertyCopyWithImpl(this._self, this._then);

  final _LoadingGetBulkProperty _self;
  final $Res Function(_LoadingGetBulkProperty) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,}) {
  return _then(_LoadingGetBulkProperty(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _SuccessGetBulkProperty implements PropertyMapState {
   _SuccessGetBulkProperty({final  List<int>? currPropertyIds = null, this.property = null}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessGetBulkPropertyCopyWith<_SuccessGetBulkProperty> get copyWith => __$SuccessGetBulkPropertyCopyWithImpl<_SuccessGetBulkProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessGetBulkProperty&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property);

@override
String toString() {
  return 'PropertyMapState.successGetBulkProperty(currPropertyIds: $currPropertyIds, property: $property)';
}


}

/// @nodoc
abstract mixin class _$SuccessGetBulkPropertyCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$SuccessGetBulkPropertyCopyWith(_SuccessGetBulkProperty value, $Res Function(_SuccessGetBulkProperty) _then) = __$SuccessGetBulkPropertyCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$SuccessGetBulkPropertyCopyWithImpl<$Res>
    implements _$SuccessGetBulkPropertyCopyWith<$Res> {
  __$SuccessGetBulkPropertyCopyWithImpl(this._self, this._then);

  final _SuccessGetBulkProperty _self;
  final $Res Function(_SuccessGetBulkProperty) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,}) {
  return _then(_SuccessGetBulkProperty(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _FailedGetBulkProperty implements PropertyMapState {
   _FailedGetBulkProperty({final  List<int>? currPropertyIds = null, this.property = null, required this.message}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;
 final  String message;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedGetBulkPropertyCopyWith<_FailedGetBulkProperty> get copyWith => __$FailedGetBulkPropertyCopyWithImpl<_FailedGetBulkProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailedGetBulkProperty&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property,message);

@override
String toString() {
  return 'PropertyMapState.failedGetBulkProperty(currPropertyIds: $currPropertyIds, property: $property, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedGetBulkPropertyCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$FailedGetBulkPropertyCopyWith(_FailedGetBulkProperty value, $Res Function(_FailedGetBulkProperty) _then) = __$FailedGetBulkPropertyCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property, String message
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$FailedGetBulkPropertyCopyWithImpl<$Res>
    implements _$FailedGetBulkPropertyCopyWith<$Res> {
  __$FailedGetBulkPropertyCopyWithImpl(this._self, this._then);

  final _FailedGetBulkProperty _self;
  final $Res Function(_FailedGetBulkProperty) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,Object? message = null,}) {
  return _then(_FailedGetBulkProperty(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _LoadingGetNextBulkProperty implements PropertyMapState {
   _LoadingGetNextBulkProperty({final  List<int>? currPropertyIds = null, this.property = null}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingGetNextBulkPropertyCopyWith<_LoadingGetNextBulkProperty> get copyWith => __$LoadingGetNextBulkPropertyCopyWithImpl<_LoadingGetNextBulkProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingGetNextBulkProperty&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property);

@override
String toString() {
  return 'PropertyMapState.loadingGetNextBulkProperty(currPropertyIds: $currPropertyIds, property: $property)';
}


}

/// @nodoc
abstract mixin class _$LoadingGetNextBulkPropertyCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$LoadingGetNextBulkPropertyCopyWith(_LoadingGetNextBulkProperty value, $Res Function(_LoadingGetNextBulkProperty) _then) = __$LoadingGetNextBulkPropertyCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$LoadingGetNextBulkPropertyCopyWithImpl<$Res>
    implements _$LoadingGetNextBulkPropertyCopyWith<$Res> {
  __$LoadingGetNextBulkPropertyCopyWithImpl(this._self, this._then);

  final _LoadingGetNextBulkProperty _self;
  final $Res Function(_LoadingGetNextBulkProperty) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,}) {
  return _then(_LoadingGetNextBulkProperty(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _SuccessGetNextBulkProperty implements PropertyMapState {
   _SuccessGetNextBulkProperty({final  List<int>? currPropertyIds = null, this.property = null}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessGetNextBulkPropertyCopyWith<_SuccessGetNextBulkProperty> get copyWith => __$SuccessGetNextBulkPropertyCopyWithImpl<_SuccessGetNextBulkProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessGetNextBulkProperty&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property);

@override
String toString() {
  return 'PropertyMapState.successGetNextBulkProperty(currPropertyIds: $currPropertyIds, property: $property)';
}


}

/// @nodoc
abstract mixin class _$SuccessGetNextBulkPropertyCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$SuccessGetNextBulkPropertyCopyWith(_SuccessGetNextBulkProperty value, $Res Function(_SuccessGetNextBulkProperty) _then) = __$SuccessGetNextBulkPropertyCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$SuccessGetNextBulkPropertyCopyWithImpl<$Res>
    implements _$SuccessGetNextBulkPropertyCopyWith<$Res> {
  __$SuccessGetNextBulkPropertyCopyWithImpl(this._self, this._then);

  final _SuccessGetNextBulkProperty _self;
  final $Res Function(_SuccessGetNextBulkProperty) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,}) {
  return _then(_SuccessGetNextBulkProperty(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

/// @nodoc


class _FailedGetNextBulkProperty implements PropertyMapState {
   _FailedGetNextBulkProperty({final  List<int>? currPropertyIds = null, this.property = null, required this.message}): _currPropertyIds = currPropertyIds;
  

 final  List<int>? _currPropertyIds;
@override@JsonKey() List<int>? get currPropertyIds {
  final value = _currPropertyIds;
  if (value == null) return null;
  if (_currPropertyIds is EqualUnmodifiableListView) return _currPropertyIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  PropertyResponseEntities? property;
 final  String message;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedGetNextBulkPropertyCopyWith<_FailedGetNextBulkProperty> get copyWith => __$FailedGetNextBulkPropertyCopyWithImpl<_FailedGetNextBulkProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailedGetNextBulkProperty&&const DeepCollectionEquality().equals(other._currPropertyIds, _currPropertyIds)&&(identical(other.property, property) || other.property == property)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_currPropertyIds),property,message);

@override
String toString() {
  return 'PropertyMapState.failedGetNextBulkProperty(currPropertyIds: $currPropertyIds, property: $property, message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedGetNextBulkPropertyCopyWith<$Res> implements $PropertyMapStateCopyWith<$Res> {
  factory _$FailedGetNextBulkPropertyCopyWith(_FailedGetNextBulkProperty value, $Res Function(_FailedGetNextBulkProperty) _then) = __$FailedGetNextBulkPropertyCopyWithImpl;
@override @useResult
$Res call({
 List<int>? currPropertyIds, PropertyResponseEntities? property, String message
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$FailedGetNextBulkPropertyCopyWithImpl<$Res>
    implements _$FailedGetNextBulkPropertyCopyWith<$Res> {
  __$FailedGetNextBulkPropertyCopyWithImpl(this._self, this._then);

  final _FailedGetNextBulkProperty _self;
  final $Res Function(_FailedGetNextBulkProperty) _then;

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currPropertyIds = freezed,Object? property = freezed,Object? message = null,}) {
  return _then(_FailedGetNextBulkProperty(
currPropertyIds: freezed == currPropertyIds ? _self._currPropertyIds : currPropertyIds // ignore: cast_nullable_to_non_nullable
as List<int>?,property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PropertyMapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PropertyResponseEntitiesCopyWith<$Res>? get property {
    if (_self.property == null) {
    return null;
  }

  return $PropertyResponseEntitiesCopyWith<$Res>(_self.property!, (value) {
    return _then(_self.copyWith(property: value));
  });
}
}

// dart format on
