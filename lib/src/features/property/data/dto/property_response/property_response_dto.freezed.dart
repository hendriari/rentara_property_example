// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyResponseDto {

 String? get nextPageUrl; List<PropertyDto>? get data;
/// Create a copy of PropertyResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyResponseDtoCopyWith<PropertyResponseDto> get copyWith => _$PropertyResponseDtoCopyWithImpl<PropertyResponseDto>(this as PropertyResponseDto, _$identity);

  /// Serializes this PropertyResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyResponseDto&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextPageUrl,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PropertyResponseDto(nextPageUrl: $nextPageUrl, data: $data)';
}


}

/// @nodoc
abstract mixin class $PropertyResponseDtoCopyWith<$Res>  {
  factory $PropertyResponseDtoCopyWith(PropertyResponseDto value, $Res Function(PropertyResponseDto) _then) = _$PropertyResponseDtoCopyWithImpl;
@useResult
$Res call({
 String? nextPageUrl, List<PropertyDto>? data
});




}
/// @nodoc
class _$PropertyResponseDtoCopyWithImpl<$Res>
    implements $PropertyResponseDtoCopyWith<$Res> {
  _$PropertyResponseDtoCopyWithImpl(this._self, this._then);

  final PropertyResponseDto _self;
  final $Res Function(PropertyResponseDto) _then;

/// Create a copy of PropertyResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nextPageUrl = freezed,Object? data = freezed,}) {
  return _then(_self.copyWith(
nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PropertyDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyResponseDto].
extension PropertyResponseDtoPatterns on PropertyResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _PropertyResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? nextPageUrl,  List<PropertyDto>? data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyResponseDto() when $default != null:
return $default(_that.nextPageUrl,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? nextPageUrl,  List<PropertyDto>? data)  $default,) {final _that = this;
switch (_that) {
case _PropertyResponseDto():
return $default(_that.nextPageUrl,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? nextPageUrl,  List<PropertyDto>? data)?  $default,) {final _that = this;
switch (_that) {
case _PropertyResponseDto() when $default != null:
return $default(_that.nextPageUrl,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyResponseDto implements PropertyResponseDto {
   _PropertyResponseDto({this.nextPageUrl, final  List<PropertyDto>? data}): _data = data;
  factory _PropertyResponseDto.fromJson(Map<String, dynamic> json) => _$PropertyResponseDtoFromJson(json);

@override final  String? nextPageUrl;
 final  List<PropertyDto>? _data;
@override List<PropertyDto>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PropertyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyResponseDtoCopyWith<_PropertyResponseDto> get copyWith => __$PropertyResponseDtoCopyWithImpl<_PropertyResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyResponseDto&&(identical(other.nextPageUrl, nextPageUrl) || other.nextPageUrl == nextPageUrl)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nextPageUrl,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PropertyResponseDto(nextPageUrl: $nextPageUrl, data: $data)';
}


}

/// @nodoc
abstract mixin class _$PropertyResponseDtoCopyWith<$Res> implements $PropertyResponseDtoCopyWith<$Res> {
  factory _$PropertyResponseDtoCopyWith(_PropertyResponseDto value, $Res Function(_PropertyResponseDto) _then) = __$PropertyResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String? nextPageUrl, List<PropertyDto>? data
});




}
/// @nodoc
class __$PropertyResponseDtoCopyWithImpl<$Res>
    implements _$PropertyResponseDtoCopyWith<$Res> {
  __$PropertyResponseDtoCopyWithImpl(this._self, this._then);

  final _PropertyResponseDto _self;
  final $Res Function(_PropertyResponseDto) _then;

/// Create a copy of PropertyResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nextPageUrl = freezed,Object? data = freezed,}) {
  return _then(_PropertyResponseDto(
nextPageUrl: freezed == nextPageUrl ? _self.nextPageUrl : nextPageUrl // ignore: cast_nullable_to_non_nullable
as String?,data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PropertyDto>?,
  ));
}


}

// dart format on
