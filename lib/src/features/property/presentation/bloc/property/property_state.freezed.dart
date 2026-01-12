// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PropertyState {

 PropertyResponseEntities? get property;
/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyStateCopyWith<PropertyState> get copyWith => _$PropertyStateCopyWithImpl<PropertyState>(this as PropertyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyState&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,property);

@override
String toString() {
  return 'PropertyState(property: $property)';
}


}

/// @nodoc
abstract mixin class $PropertyStateCopyWith<$Res>  {
  factory $PropertyStateCopyWith(PropertyState value, $Res Function(PropertyState) _then) = _$PropertyStateCopyWithImpl;
@useResult
$Res call({
 PropertyResponseEntities? property
});


$PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class _$PropertyStateCopyWithImpl<$Res>
    implements $PropertyStateCopyWith<$Res> {
  _$PropertyStateCopyWithImpl(this._self, this._then);

  final PropertyState _self;
  final $Res Function(PropertyState) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? property = freezed,}) {
  return _then(_self.copyWith(
property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}
/// Create a copy of PropertyState
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


/// Adds pattern-matching-related methods to [PropertyState].
extension PropertyStatePatterns on PropertyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Init value)?  init,TResult Function( _LoadingGetProperty value)?  loadingGetProperty,TResult Function( _SuccessGetProperty value)?  successGetProperty,TResult Function( _ErrorGetProperty value)?  errorGetProperty,TResult Function( _LoadingGetNextProperty value)?  loadingGetNextProperty,TResult Function( _SuccessGetNextProperty value)?  successGetNextProperty,TResult Function( _ErrorGetNextProperty value)?  errorGetNextProperty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadingGetProperty() when loadingGetProperty != null:
return loadingGetProperty(_that);case _SuccessGetProperty() when successGetProperty != null:
return successGetProperty(_that);case _ErrorGetProperty() when errorGetProperty != null:
return errorGetProperty(_that);case _LoadingGetNextProperty() when loadingGetNextProperty != null:
return loadingGetNextProperty(_that);case _SuccessGetNextProperty() when successGetNextProperty != null:
return successGetNextProperty(_that);case _ErrorGetNextProperty() when errorGetNextProperty != null:
return errorGetNextProperty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Init value)  init,required TResult Function( _LoadingGetProperty value)  loadingGetProperty,required TResult Function( _SuccessGetProperty value)  successGetProperty,required TResult Function( _ErrorGetProperty value)  errorGetProperty,required TResult Function( _LoadingGetNextProperty value)  loadingGetNextProperty,required TResult Function( _SuccessGetNextProperty value)  successGetNextProperty,required TResult Function( _ErrorGetNextProperty value)  errorGetNextProperty,}){
final _that = this;
switch (_that) {
case _Init():
return init(_that);case _LoadingGetProperty():
return loadingGetProperty(_that);case _SuccessGetProperty():
return successGetProperty(_that);case _ErrorGetProperty():
return errorGetProperty(_that);case _LoadingGetNextProperty():
return loadingGetNextProperty(_that);case _SuccessGetNextProperty():
return successGetNextProperty(_that);case _ErrorGetNextProperty():
return errorGetNextProperty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Init value)?  init,TResult? Function( _LoadingGetProperty value)?  loadingGetProperty,TResult? Function( _SuccessGetProperty value)?  successGetProperty,TResult? Function( _ErrorGetProperty value)?  errorGetProperty,TResult? Function( _LoadingGetNextProperty value)?  loadingGetNextProperty,TResult? Function( _SuccessGetNextProperty value)?  successGetNextProperty,TResult? Function( _ErrorGetNextProperty value)?  errorGetNextProperty,}){
final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that);case _LoadingGetProperty() when loadingGetProperty != null:
return loadingGetProperty(_that);case _SuccessGetProperty() when successGetProperty != null:
return successGetProperty(_that);case _ErrorGetProperty() when errorGetProperty != null:
return errorGetProperty(_that);case _LoadingGetNextProperty() when loadingGetNextProperty != null:
return loadingGetNextProperty(_that);case _SuccessGetNextProperty() when successGetNextProperty != null:
return successGetNextProperty(_that);case _ErrorGetNextProperty() when errorGetNextProperty != null:
return errorGetNextProperty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PropertyResponseEntities? property)?  init,TResult Function( PropertyResponseEntities? property)?  loadingGetProperty,TResult Function( PropertyResponseEntities? property)?  successGetProperty,TResult Function( PropertyResponseEntities? property,  String message)?  errorGetProperty,TResult Function( PropertyResponseEntities? property)?  loadingGetNextProperty,TResult Function( PropertyResponseEntities? property)?  successGetNextProperty,TResult Function( PropertyResponseEntities? property,  String message)?  errorGetNextProperty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.property);case _LoadingGetProperty() when loadingGetProperty != null:
return loadingGetProperty(_that.property);case _SuccessGetProperty() when successGetProperty != null:
return successGetProperty(_that.property);case _ErrorGetProperty() when errorGetProperty != null:
return errorGetProperty(_that.property,_that.message);case _LoadingGetNextProperty() when loadingGetNextProperty != null:
return loadingGetNextProperty(_that.property);case _SuccessGetNextProperty() when successGetNextProperty != null:
return successGetNextProperty(_that.property);case _ErrorGetNextProperty() when errorGetNextProperty != null:
return errorGetNextProperty(_that.property,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PropertyResponseEntities? property)  init,required TResult Function( PropertyResponseEntities? property)  loadingGetProperty,required TResult Function( PropertyResponseEntities? property)  successGetProperty,required TResult Function( PropertyResponseEntities? property,  String message)  errorGetProperty,required TResult Function( PropertyResponseEntities? property)  loadingGetNextProperty,required TResult Function( PropertyResponseEntities? property)  successGetNextProperty,required TResult Function( PropertyResponseEntities? property,  String message)  errorGetNextProperty,}) {final _that = this;
switch (_that) {
case _Init():
return init(_that.property);case _LoadingGetProperty():
return loadingGetProperty(_that.property);case _SuccessGetProperty():
return successGetProperty(_that.property);case _ErrorGetProperty():
return errorGetProperty(_that.property,_that.message);case _LoadingGetNextProperty():
return loadingGetNextProperty(_that.property);case _SuccessGetNextProperty():
return successGetNextProperty(_that.property);case _ErrorGetNextProperty():
return errorGetNextProperty(_that.property,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PropertyResponseEntities? property)?  init,TResult? Function( PropertyResponseEntities? property)?  loadingGetProperty,TResult? Function( PropertyResponseEntities? property)?  successGetProperty,TResult? Function( PropertyResponseEntities? property,  String message)?  errorGetProperty,TResult? Function( PropertyResponseEntities? property)?  loadingGetNextProperty,TResult? Function( PropertyResponseEntities? property)?  successGetNextProperty,TResult? Function( PropertyResponseEntities? property,  String message)?  errorGetNextProperty,}) {final _that = this;
switch (_that) {
case _Init() when init != null:
return init(_that.property);case _LoadingGetProperty() when loadingGetProperty != null:
return loadingGetProperty(_that.property);case _SuccessGetProperty() when successGetProperty != null:
return successGetProperty(_that.property);case _ErrorGetProperty() when errorGetProperty != null:
return errorGetProperty(_that.property,_that.message);case _LoadingGetNextProperty() when loadingGetNextProperty != null:
return loadingGetNextProperty(_that.property);case _SuccessGetNextProperty() when successGetNextProperty != null:
return successGetNextProperty(_that.property);case _ErrorGetNextProperty() when errorGetNextProperty != null:
return errorGetNextProperty(_that.property,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Init implements PropertyState {
   _Init({this.property = null});
  

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitCopyWith<_Init> get copyWith => __$InitCopyWithImpl<_Init>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Init&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,property);

@override
String toString() {
  return 'PropertyState.init(property: $property)';
}


}

/// @nodoc
abstract mixin class _$InitCopyWith<$Res> implements $PropertyStateCopyWith<$Res> {
  factory _$InitCopyWith(_Init value, $Res Function(_Init) _then) = __$InitCopyWithImpl;
@override @useResult
$Res call({
 PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$InitCopyWithImpl<$Res>
    implements _$InitCopyWith<$Res> {
  __$InitCopyWithImpl(this._self, this._then);

  final _Init _self;
  final $Res Function(_Init) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? property = freezed,}) {
  return _then(_Init(
property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyState
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


class _LoadingGetProperty implements PropertyState {
   _LoadingGetProperty({this.property = null});
  

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingGetPropertyCopyWith<_LoadingGetProperty> get copyWith => __$LoadingGetPropertyCopyWithImpl<_LoadingGetProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingGetProperty&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,property);

@override
String toString() {
  return 'PropertyState.loadingGetProperty(property: $property)';
}


}

/// @nodoc
abstract mixin class _$LoadingGetPropertyCopyWith<$Res> implements $PropertyStateCopyWith<$Res> {
  factory _$LoadingGetPropertyCopyWith(_LoadingGetProperty value, $Res Function(_LoadingGetProperty) _then) = __$LoadingGetPropertyCopyWithImpl;
@override @useResult
$Res call({
 PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$LoadingGetPropertyCopyWithImpl<$Res>
    implements _$LoadingGetPropertyCopyWith<$Res> {
  __$LoadingGetPropertyCopyWithImpl(this._self, this._then);

  final _LoadingGetProperty _self;
  final $Res Function(_LoadingGetProperty) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? property = freezed,}) {
  return _then(_LoadingGetProperty(
property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyState
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


class _SuccessGetProperty implements PropertyState {
   _SuccessGetProperty({this.property = null});
  

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessGetPropertyCopyWith<_SuccessGetProperty> get copyWith => __$SuccessGetPropertyCopyWithImpl<_SuccessGetProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessGetProperty&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,property);

@override
String toString() {
  return 'PropertyState.successGetProperty(property: $property)';
}


}

/// @nodoc
abstract mixin class _$SuccessGetPropertyCopyWith<$Res> implements $PropertyStateCopyWith<$Res> {
  factory _$SuccessGetPropertyCopyWith(_SuccessGetProperty value, $Res Function(_SuccessGetProperty) _then) = __$SuccessGetPropertyCopyWithImpl;
@override @useResult
$Res call({
 PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$SuccessGetPropertyCopyWithImpl<$Res>
    implements _$SuccessGetPropertyCopyWith<$Res> {
  __$SuccessGetPropertyCopyWithImpl(this._self, this._then);

  final _SuccessGetProperty _self;
  final $Res Function(_SuccessGetProperty) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? property = freezed,}) {
  return _then(_SuccessGetProperty(
property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyState
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


class _ErrorGetProperty implements PropertyState {
   _ErrorGetProperty({this.property = null, required this.message});
  

@override@JsonKey() final  PropertyResponseEntities? property;
 final  String message;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorGetPropertyCopyWith<_ErrorGetProperty> get copyWith => __$ErrorGetPropertyCopyWithImpl<_ErrorGetProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorGetProperty&&(identical(other.property, property) || other.property == property)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,property,message);

@override
String toString() {
  return 'PropertyState.errorGetProperty(property: $property, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorGetPropertyCopyWith<$Res> implements $PropertyStateCopyWith<$Res> {
  factory _$ErrorGetPropertyCopyWith(_ErrorGetProperty value, $Res Function(_ErrorGetProperty) _then) = __$ErrorGetPropertyCopyWithImpl;
@override @useResult
$Res call({
 PropertyResponseEntities? property, String message
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$ErrorGetPropertyCopyWithImpl<$Res>
    implements _$ErrorGetPropertyCopyWith<$Res> {
  __$ErrorGetPropertyCopyWithImpl(this._self, this._then);

  final _ErrorGetProperty _self;
  final $Res Function(_ErrorGetProperty) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? property = freezed,Object? message = null,}) {
  return _then(_ErrorGetProperty(
property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PropertyState
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


class _LoadingGetNextProperty implements PropertyState {
   _LoadingGetNextProperty({this.property = null});
  

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingGetNextPropertyCopyWith<_LoadingGetNextProperty> get copyWith => __$LoadingGetNextPropertyCopyWithImpl<_LoadingGetNextProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingGetNextProperty&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,property);

@override
String toString() {
  return 'PropertyState.loadingGetNextProperty(property: $property)';
}


}

/// @nodoc
abstract mixin class _$LoadingGetNextPropertyCopyWith<$Res> implements $PropertyStateCopyWith<$Res> {
  factory _$LoadingGetNextPropertyCopyWith(_LoadingGetNextProperty value, $Res Function(_LoadingGetNextProperty) _then) = __$LoadingGetNextPropertyCopyWithImpl;
@override @useResult
$Res call({
 PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$LoadingGetNextPropertyCopyWithImpl<$Res>
    implements _$LoadingGetNextPropertyCopyWith<$Res> {
  __$LoadingGetNextPropertyCopyWithImpl(this._self, this._then);

  final _LoadingGetNextProperty _self;
  final $Res Function(_LoadingGetNextProperty) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? property = freezed,}) {
  return _then(_LoadingGetNextProperty(
property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyState
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


class _SuccessGetNextProperty implements PropertyState {
   _SuccessGetNextProperty({this.property = null});
  

@override@JsonKey() final  PropertyResponseEntities? property;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessGetNextPropertyCopyWith<_SuccessGetNextProperty> get copyWith => __$SuccessGetNextPropertyCopyWithImpl<_SuccessGetNextProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessGetNextProperty&&(identical(other.property, property) || other.property == property));
}


@override
int get hashCode => Object.hash(runtimeType,property);

@override
String toString() {
  return 'PropertyState.successGetNextProperty(property: $property)';
}


}

/// @nodoc
abstract mixin class _$SuccessGetNextPropertyCopyWith<$Res> implements $PropertyStateCopyWith<$Res> {
  factory _$SuccessGetNextPropertyCopyWith(_SuccessGetNextProperty value, $Res Function(_SuccessGetNextProperty) _then) = __$SuccessGetNextPropertyCopyWithImpl;
@override @useResult
$Res call({
 PropertyResponseEntities? property
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$SuccessGetNextPropertyCopyWithImpl<$Res>
    implements _$SuccessGetNextPropertyCopyWith<$Res> {
  __$SuccessGetNextPropertyCopyWithImpl(this._self, this._then);

  final _SuccessGetNextProperty _self;
  final $Res Function(_SuccessGetNextProperty) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? property = freezed,}) {
  return _then(_SuccessGetNextProperty(
property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,
  ));
}

/// Create a copy of PropertyState
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


class _ErrorGetNextProperty implements PropertyState {
   _ErrorGetNextProperty({this.property = null, required this.message});
  

@override@JsonKey() final  PropertyResponseEntities? property;
 final  String message;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorGetNextPropertyCopyWith<_ErrorGetNextProperty> get copyWith => __$ErrorGetNextPropertyCopyWithImpl<_ErrorGetNextProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ErrorGetNextProperty&&(identical(other.property, property) || other.property == property)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,property,message);

@override
String toString() {
  return 'PropertyState.errorGetNextProperty(property: $property, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorGetNextPropertyCopyWith<$Res> implements $PropertyStateCopyWith<$Res> {
  factory _$ErrorGetNextPropertyCopyWith(_ErrorGetNextProperty value, $Res Function(_ErrorGetNextProperty) _then) = __$ErrorGetNextPropertyCopyWithImpl;
@override @useResult
$Res call({
 PropertyResponseEntities? property, String message
});


@override $PropertyResponseEntitiesCopyWith<$Res>? get property;

}
/// @nodoc
class __$ErrorGetNextPropertyCopyWithImpl<$Res>
    implements _$ErrorGetNextPropertyCopyWith<$Res> {
  __$ErrorGetNextPropertyCopyWithImpl(this._self, this._then);

  final _ErrorGetNextProperty _self;
  final $Res Function(_ErrorGetNextProperty) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? property = freezed,Object? message = null,}) {
  return _then(_ErrorGetNextProperty(
property: freezed == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyResponseEntities?,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of PropertyState
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
