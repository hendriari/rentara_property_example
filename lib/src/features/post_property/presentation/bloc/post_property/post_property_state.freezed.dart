// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_property_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostPropertyState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostPropertyState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostPropertyState()';
}


}

/// @nodoc
class $PostPropertyStateCopyWith<$Res>  {
$PostPropertyStateCopyWith(PostPropertyState _, $Res Function(PostPropertyState) __);
}


/// Adds pattern-matching-related methods to [PostPropertyState].
extension PostPropertyStatePatterns on PostPropertyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _UpdatedImageSource value)?  updatedImageSource,TResult Function( _LoadingPostProperty value)?  loadingPostProperty,TResult Function( _SuccessPostProperty value)?  successPostProperty,TResult Function( _FailedPostProperty value)?  failedPostProperty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _UpdatedImageSource() when updatedImageSource != null:
return updatedImageSource(_that);case _LoadingPostProperty() when loadingPostProperty != null:
return loadingPostProperty(_that);case _SuccessPostProperty() when successPostProperty != null:
return successPostProperty(_that);case _FailedPostProperty() when failedPostProperty != null:
return failedPostProperty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _UpdatedImageSource value)  updatedImageSource,required TResult Function( _LoadingPostProperty value)  loadingPostProperty,required TResult Function( _SuccessPostProperty value)  successPostProperty,required TResult Function( _FailedPostProperty value)  failedPostProperty,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _UpdatedImageSource():
return updatedImageSource(_that);case _LoadingPostProperty():
return loadingPostProperty(_that);case _SuccessPostProperty():
return successPostProperty(_that);case _FailedPostProperty():
return failedPostProperty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _UpdatedImageSource value)?  updatedImageSource,TResult? Function( _LoadingPostProperty value)?  loadingPostProperty,TResult? Function( _SuccessPostProperty value)?  successPostProperty,TResult? Function( _FailedPostProperty value)?  failedPostProperty,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _UpdatedImageSource() when updatedImageSource != null:
return updatedImageSource(_that);case _LoadingPostProperty() when loadingPostProperty != null:
return loadingPostProperty(_that);case _SuccessPostProperty() when successPostProperty != null:
return successPostProperty(_that);case _FailedPostProperty() when failedPostProperty != null:
return failedPostProperty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function( String? source)?  updatedImageSource,TResult Function()?  loadingPostProperty,TResult Function( String message)?  successPostProperty,TResult Function( String message)?  failedPostProperty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _UpdatedImageSource() when updatedImageSource != null:
return updatedImageSource(_that.source);case _LoadingPostProperty() when loadingPostProperty != null:
return loadingPostProperty();case _SuccessPostProperty() when successPostProperty != null:
return successPostProperty(_that.message);case _FailedPostProperty() when failedPostProperty != null:
return failedPostProperty(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function( String? source)  updatedImageSource,required TResult Function()  loadingPostProperty,required TResult Function( String message)  successPostProperty,required TResult Function( String message)  failedPostProperty,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _UpdatedImageSource():
return updatedImageSource(_that.source);case _LoadingPostProperty():
return loadingPostProperty();case _SuccessPostProperty():
return successPostProperty(_that.message);case _FailedPostProperty():
return failedPostProperty(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function( String? source)?  updatedImageSource,TResult? Function()?  loadingPostProperty,TResult? Function( String message)?  successPostProperty,TResult? Function( String message)?  failedPostProperty,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _UpdatedImageSource() when updatedImageSource != null:
return updatedImageSource(_that.source);case _LoadingPostProperty() when loadingPostProperty != null:
return loadingPostProperty();case _SuccessPostProperty() when successPostProperty != null:
return successPostProperty(_that.message);case _FailedPostProperty() when failedPostProperty != null:
return failedPostProperty(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements PostPropertyState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostPropertyState.initial()';
}


}




/// @nodoc


class _UpdatedImageSource implements PostPropertyState {
  const _UpdatedImageSource({required this.source});
  

 final  String? source;

/// Create a copy of PostPropertyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdatedImageSourceCopyWith<_UpdatedImageSource> get copyWith => __$UpdatedImageSourceCopyWithImpl<_UpdatedImageSource>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdatedImageSource&&(identical(other.source, source) || other.source == source));
}


@override
int get hashCode => Object.hash(runtimeType,source);

@override
String toString() {
  return 'PostPropertyState.updatedImageSource(source: $source)';
}


}

/// @nodoc
abstract mixin class _$UpdatedImageSourceCopyWith<$Res> implements $PostPropertyStateCopyWith<$Res> {
  factory _$UpdatedImageSourceCopyWith(_UpdatedImageSource value, $Res Function(_UpdatedImageSource) _then) = __$UpdatedImageSourceCopyWithImpl;
@useResult
$Res call({
 String? source
});




}
/// @nodoc
class __$UpdatedImageSourceCopyWithImpl<$Res>
    implements _$UpdatedImageSourceCopyWith<$Res> {
  __$UpdatedImageSourceCopyWithImpl(this._self, this._then);

  final _UpdatedImageSource _self;
  final $Res Function(_UpdatedImageSource) _then;

/// Create a copy of PostPropertyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? source = freezed,}) {
  return _then(_UpdatedImageSource(
source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _LoadingPostProperty implements PostPropertyState {
  const _LoadingPostProperty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingPostProperty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostPropertyState.loadingPostProperty()';
}


}




/// @nodoc


class _SuccessPostProperty implements PostPropertyState {
  const _SuccessPostProperty({required this.message});
  

 final  String message;

/// Create a copy of PostPropertyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessPostPropertyCopyWith<_SuccessPostProperty> get copyWith => __$SuccessPostPropertyCopyWithImpl<_SuccessPostProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SuccessPostProperty&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PostPropertyState.successPostProperty(message: $message)';
}


}

/// @nodoc
abstract mixin class _$SuccessPostPropertyCopyWith<$Res> implements $PostPropertyStateCopyWith<$Res> {
  factory _$SuccessPostPropertyCopyWith(_SuccessPostProperty value, $Res Function(_SuccessPostProperty) _then) = __$SuccessPostPropertyCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$SuccessPostPropertyCopyWithImpl<$Res>
    implements _$SuccessPostPropertyCopyWith<$Res> {
  __$SuccessPostPropertyCopyWithImpl(this._self, this._then);

  final _SuccessPostProperty _self;
  final $Res Function(_SuccessPostProperty) _then;

/// Create a copy of PostPropertyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_SuccessPostProperty(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FailedPostProperty implements PostPropertyState {
  const _FailedPostProperty({required this.message});
  

 final  String message;

/// Create a copy of PostPropertyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailedPostPropertyCopyWith<_FailedPostProperty> get copyWith => __$FailedPostPropertyCopyWithImpl<_FailedPostProperty>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FailedPostProperty&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PostPropertyState.failedPostProperty(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailedPostPropertyCopyWith<$Res> implements $PostPropertyStateCopyWith<$Res> {
  factory _$FailedPostPropertyCopyWith(_FailedPostProperty value, $Res Function(_FailedPostProperty) _then) = __$FailedPostPropertyCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailedPostPropertyCopyWithImpl<$Res>
    implements _$FailedPostPropertyCopyWith<$Res> {
  __$FailedPostPropertyCopyWithImpl(this._self, this._then);

  final _FailedPostProperty _self;
  final $Res Function(_FailedPostProperty) _then;

/// Create a copy of PostPropertyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_FailedPostProperty(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
