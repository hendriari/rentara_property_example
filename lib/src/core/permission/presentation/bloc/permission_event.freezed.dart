// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionEvent()';
}


}

/// @nodoc
class $PermissionEventCopyWith<$Res>  {
$PermissionEventCopyWith(PermissionEvent _, $Res Function(PermissionEvent) __);
}


/// Adds pattern-matching-related methods to [PermissionEvent].
extension PermissionEventPatterns on PermissionEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PermissionEventRequestPermission value)?  requestPermission,TResult Function( PermissionEventCheckPermission value)?  checkPermission,TResult Function( PermissionEventOpenSetting value)?  openSetting,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PermissionEventRequestPermission() when requestPermission != null:
return requestPermission(_that);case PermissionEventCheckPermission() when checkPermission != null:
return checkPermission(_that);case PermissionEventOpenSetting() when openSetting != null:
return openSetting(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PermissionEventRequestPermission value)  requestPermission,required TResult Function( PermissionEventCheckPermission value)  checkPermission,required TResult Function( PermissionEventOpenSetting value)  openSetting,}){
final _that = this;
switch (_that) {
case PermissionEventRequestPermission():
return requestPermission(_that);case PermissionEventCheckPermission():
return checkPermission(_that);case PermissionEventOpenSetting():
return openSetting(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PermissionEventRequestPermission value)?  requestPermission,TResult? Function( PermissionEventCheckPermission value)?  checkPermission,TResult? Function( PermissionEventOpenSetting value)?  openSetting,}){
final _that = this;
switch (_that) {
case PermissionEventRequestPermission() when requestPermission != null:
return requestPermission(_that);case PermissionEventCheckPermission() when checkPermission != null:
return checkPermission(_that);case PermissionEventOpenSetting() when openSetting != null:
return openSetting(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( AppPermission permission)?  requestPermission,TResult Function( AppPermission permission)?  checkPermission,TResult Function()?  openSetting,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PermissionEventRequestPermission() when requestPermission != null:
return requestPermission(_that.permission);case PermissionEventCheckPermission() when checkPermission != null:
return checkPermission(_that.permission);case PermissionEventOpenSetting() when openSetting != null:
return openSetting();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( AppPermission permission)  requestPermission,required TResult Function( AppPermission permission)  checkPermission,required TResult Function()  openSetting,}) {final _that = this;
switch (_that) {
case PermissionEventRequestPermission():
return requestPermission(_that.permission);case PermissionEventCheckPermission():
return checkPermission(_that.permission);case PermissionEventOpenSetting():
return openSetting();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( AppPermission permission)?  requestPermission,TResult? Function( AppPermission permission)?  checkPermission,TResult? Function()?  openSetting,}) {final _that = this;
switch (_that) {
case PermissionEventRequestPermission() when requestPermission != null:
return requestPermission(_that.permission);case PermissionEventCheckPermission() when checkPermission != null:
return checkPermission(_that.permission);case PermissionEventOpenSetting() when openSetting != null:
return openSetting();case _:
  return null;

}
}

}

/// @nodoc


class PermissionEventRequestPermission implements PermissionEvent {
  const PermissionEventRequestPermission({required this.permission});
  

 final  AppPermission permission;

/// Create a copy of PermissionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionEventRequestPermissionCopyWith<PermissionEventRequestPermission> get copyWith => _$PermissionEventRequestPermissionCopyWithImpl<PermissionEventRequestPermission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionEventRequestPermission&&(identical(other.permission, permission) || other.permission == permission));
}


@override
int get hashCode => Object.hash(runtimeType,permission);

@override
String toString() {
  return 'PermissionEvent.requestPermission(permission: $permission)';
}


}

/// @nodoc
abstract mixin class $PermissionEventRequestPermissionCopyWith<$Res> implements $PermissionEventCopyWith<$Res> {
  factory $PermissionEventRequestPermissionCopyWith(PermissionEventRequestPermission value, $Res Function(PermissionEventRequestPermission) _then) = _$PermissionEventRequestPermissionCopyWithImpl;
@useResult
$Res call({
 AppPermission permission
});




}
/// @nodoc
class _$PermissionEventRequestPermissionCopyWithImpl<$Res>
    implements $PermissionEventRequestPermissionCopyWith<$Res> {
  _$PermissionEventRequestPermissionCopyWithImpl(this._self, this._then);

  final PermissionEventRequestPermission _self;
  final $Res Function(PermissionEventRequestPermission) _then;

/// Create a copy of PermissionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? permission = null,}) {
  return _then(PermissionEventRequestPermission(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as AppPermission,
  ));
}


}

/// @nodoc


class PermissionEventCheckPermission implements PermissionEvent {
  const PermissionEventCheckPermission({required this.permission});
  

 final  AppPermission permission;

/// Create a copy of PermissionEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PermissionEventCheckPermissionCopyWith<PermissionEventCheckPermission> get copyWith => _$PermissionEventCheckPermissionCopyWithImpl<PermissionEventCheckPermission>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionEventCheckPermission&&(identical(other.permission, permission) || other.permission == permission));
}


@override
int get hashCode => Object.hash(runtimeType,permission);

@override
String toString() {
  return 'PermissionEvent.checkPermission(permission: $permission)';
}


}

/// @nodoc
abstract mixin class $PermissionEventCheckPermissionCopyWith<$Res> implements $PermissionEventCopyWith<$Res> {
  factory $PermissionEventCheckPermissionCopyWith(PermissionEventCheckPermission value, $Res Function(PermissionEventCheckPermission) _then) = _$PermissionEventCheckPermissionCopyWithImpl;
@useResult
$Res call({
 AppPermission permission
});




}
/// @nodoc
class _$PermissionEventCheckPermissionCopyWithImpl<$Res>
    implements $PermissionEventCheckPermissionCopyWith<$Res> {
  _$PermissionEventCheckPermissionCopyWithImpl(this._self, this._then);

  final PermissionEventCheckPermission _self;
  final $Res Function(PermissionEventCheckPermission) _then;

/// Create a copy of PermissionEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? permission = null,}) {
  return _then(PermissionEventCheckPermission(
permission: null == permission ? _self.permission : permission // ignore: cast_nullable_to_non_nullable
as AppPermission,
  ));
}


}

/// @nodoc


class PermissionEventOpenSetting implements PermissionEvent {
  const PermissionEventOpenSetting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionEventOpenSetting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionEvent.openSetting()';
}


}




// dart format on
