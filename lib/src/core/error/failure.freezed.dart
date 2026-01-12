// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Failure {

 String get message;
/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailureCopyWith<Failure> get copyWith => _$FailureCopyWithImpl<Failure>(this as Failure, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $FailureCopyWith<$Res>  {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) _then) = _$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$FailureCopyWithImpl<$Res>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._self, this._then);

  final Failure _self;
  final $Res Function(Failure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Failure].
extension FailurePatterns on Failure {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ServerFailure value)?  server,TResult Function( _ConnectionFailure value)?  connection,TResult Function( _GeneralFailure value)?  general,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ServerFailure() when server != null:
return server(_that);case _ConnectionFailure() when connection != null:
return connection(_that);case _GeneralFailure() when general != null:
return general(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ServerFailure value)  server,required TResult Function( _ConnectionFailure value)  connection,required TResult Function( _GeneralFailure value)  general,}){
final _that = this;
switch (_that) {
case _ServerFailure():
return server(_that);case _ConnectionFailure():
return connection(_that);case _GeneralFailure():
return general(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ServerFailure value)?  server,TResult? Function( _ConnectionFailure value)?  connection,TResult? Function( _GeneralFailure value)?  general,}){
final _that = this;
switch (_that) {
case _ServerFailure() when server != null:
return server(_that);case _ConnectionFailure() when connection != null:
return connection(_that);case _GeneralFailure() when general != null:
return general(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String message)?  server,TResult Function( String message)?  connection,TResult Function( String message)?  general,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ServerFailure() when server != null:
return server(_that.message);case _ConnectionFailure() when connection != null:
return connection(_that.message);case _GeneralFailure() when general != null:
return general(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String message)  server,required TResult Function( String message)  connection,required TResult Function( String message)  general,}) {final _that = this;
switch (_that) {
case _ServerFailure():
return server(_that.message);case _ConnectionFailure():
return connection(_that.message);case _GeneralFailure():
return general(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String message)?  server,TResult? Function( String message)?  connection,TResult? Function( String message)?  general,}) {final _that = this;
switch (_that) {
case _ServerFailure() when server != null:
return server(_that.message);case _ConnectionFailure() when connection != null:
return connection(_that.message);case _GeneralFailure() when general != null:
return general(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _ServerFailure implements Failure {
   _ServerFailure({required this.message});
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ServerFailureCopyWith<_ServerFailure> get copyWith => __$ServerFailureCopyWithImpl<_ServerFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ServerFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.server(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ServerFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ServerFailureCopyWith(_ServerFailure value, $Res Function(_ServerFailure) _then) = __$ServerFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ServerFailureCopyWithImpl<$Res>
    implements _$ServerFailureCopyWith<$Res> {
  __$ServerFailureCopyWithImpl(this._self, this._then);

  final _ServerFailure _self;
  final $Res Function(_ServerFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ServerFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ConnectionFailure implements Failure {
   _ConnectionFailure({required this.message});
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConnectionFailureCopyWith<_ConnectionFailure> get copyWith => __$ConnectionFailureCopyWithImpl<_ConnectionFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConnectionFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.connection(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ConnectionFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$ConnectionFailureCopyWith(_ConnectionFailure value, $Res Function(_ConnectionFailure) _then) = __$ConnectionFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ConnectionFailureCopyWithImpl<$Res>
    implements _$ConnectionFailureCopyWith<$Res> {
  __$ConnectionFailureCopyWithImpl(this._self, this._then);

  final _ConnectionFailure _self;
  final $Res Function(_ConnectionFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_ConnectionFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _GeneralFailure implements Failure {
   _GeneralFailure({required this.message});
  

@override final  String message;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralFailureCopyWith<_GeneralFailure> get copyWith => __$GeneralFailureCopyWithImpl<_GeneralFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'Failure.general(message: $message)';
}


}

/// @nodoc
abstract mixin class _$GeneralFailureCopyWith<$Res> implements $FailureCopyWith<$Res> {
  factory _$GeneralFailureCopyWith(_GeneralFailure value, $Res Function(_GeneralFailure) _then) = __$GeneralFailureCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$GeneralFailureCopyWithImpl<$Res>
    implements _$GeneralFailureCopyWith<$Res> {
  __$GeneralFailureCopyWithImpl(this._self, this._then);

  final _GeneralFailure _self;
  final $Res Function(_GeneralFailure) _then;

/// Create a copy of Failure
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_GeneralFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
