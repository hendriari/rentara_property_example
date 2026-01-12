// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_property_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostPropertyDto {

 String get type; String get status; String get name; String get description; String get address; int get price; int get buildingArea; int get landArea; String get image;
/// Create a copy of PostPropertyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostPropertyDtoCopyWith<PostPropertyDto> get copyWith => _$PostPropertyDtoCopyWithImpl<PostPropertyDto>(this as PostPropertyDto, _$identity);

  /// Serializes this PostPropertyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostPropertyDto&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.price, price) || other.price == price)&&(identical(other.buildingArea, buildingArea) || other.buildingArea == buildingArea)&&(identical(other.landArea, landArea) || other.landArea == landArea)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,status,name,description,address,price,buildingArea,landArea,image);

@override
String toString() {
  return 'PostPropertyDto(type: $type, status: $status, name: $name, description: $description, address: $address, price: $price, buildingArea: $buildingArea, landArea: $landArea, image: $image)';
}


}

/// @nodoc
abstract mixin class $PostPropertyDtoCopyWith<$Res>  {
  factory $PostPropertyDtoCopyWith(PostPropertyDto value, $Res Function(PostPropertyDto) _then) = _$PostPropertyDtoCopyWithImpl;
@useResult
$Res call({
 String type, String status, String name, String description, String address, int price, int buildingArea, int landArea, String image
});




}
/// @nodoc
class _$PostPropertyDtoCopyWithImpl<$Res>
    implements $PostPropertyDtoCopyWith<$Res> {
  _$PostPropertyDtoCopyWithImpl(this._self, this._then);

  final PostPropertyDto _self;
  final $Res Function(PostPropertyDto) _then;

/// Create a copy of PostPropertyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? status = null,Object? name = null,Object? description = null,Object? address = null,Object? price = null,Object? buildingArea = null,Object? landArea = null,Object? image = null,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,buildingArea: null == buildingArea ? _self.buildingArea : buildingArea // ignore: cast_nullable_to_non_nullable
as int,landArea: null == landArea ? _self.landArea : landArea // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostPropertyDto].
extension PostPropertyDtoPatterns on PostPropertyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostPropertyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostPropertyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostPropertyDto value)  $default,){
final _that = this;
switch (_that) {
case _PostPropertyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostPropertyDto value)?  $default,){
final _that = this;
switch (_that) {
case _PostPropertyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String status,  String name,  String description,  String address,  int price,  int buildingArea,  int landArea,  String image)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostPropertyDto() when $default != null:
return $default(_that.type,_that.status,_that.name,_that.description,_that.address,_that.price,_that.buildingArea,_that.landArea,_that.image);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String status,  String name,  String description,  String address,  int price,  int buildingArea,  int landArea,  String image)  $default,) {final _that = this;
switch (_that) {
case _PostPropertyDto():
return $default(_that.type,_that.status,_that.name,_that.description,_that.address,_that.price,_that.buildingArea,_that.landArea,_that.image);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String status,  String name,  String description,  String address,  int price,  int buildingArea,  int landArea,  String image)?  $default,) {final _that = this;
switch (_that) {
case _PostPropertyDto() when $default != null:
return $default(_that.type,_that.status,_that.name,_that.description,_that.address,_that.price,_that.buildingArea,_that.landArea,_that.image);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PostPropertyDto implements PostPropertyDto {
  const _PostPropertyDto({required this.type, required this.status, required this.name, required this.description, required this.address, required this.price, required this.buildingArea, required this.landArea, required this.image});
  factory _PostPropertyDto.fromJson(Map<String, dynamic> json) => _$PostPropertyDtoFromJson(json);

@override final  String type;
@override final  String status;
@override final  String name;
@override final  String description;
@override final  String address;
@override final  int price;
@override final  int buildingArea;
@override final  int landArea;
@override final  String image;

/// Create a copy of PostPropertyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostPropertyDtoCopyWith<_PostPropertyDto> get copyWith => __$PostPropertyDtoCopyWithImpl<_PostPropertyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PostPropertyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostPropertyDto&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.price, price) || other.price == price)&&(identical(other.buildingArea, buildingArea) || other.buildingArea == buildingArea)&&(identical(other.landArea, landArea) || other.landArea == landArea)&&(identical(other.image, image) || other.image == image));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,status,name,description,address,price,buildingArea,landArea,image);

@override
String toString() {
  return 'PostPropertyDto(type: $type, status: $status, name: $name, description: $description, address: $address, price: $price, buildingArea: $buildingArea, landArea: $landArea, image: $image)';
}


}

/// @nodoc
abstract mixin class _$PostPropertyDtoCopyWith<$Res> implements $PostPropertyDtoCopyWith<$Res> {
  factory _$PostPropertyDtoCopyWith(_PostPropertyDto value, $Res Function(_PostPropertyDto) _then) = __$PostPropertyDtoCopyWithImpl;
@override @useResult
$Res call({
 String type, String status, String name, String description, String address, int price, int buildingArea, int landArea, String image
});




}
/// @nodoc
class __$PostPropertyDtoCopyWithImpl<$Res>
    implements _$PostPropertyDtoCopyWith<$Res> {
  __$PostPropertyDtoCopyWithImpl(this._self, this._then);

  final _PostPropertyDto _self;
  final $Res Function(_PostPropertyDto) _then;

/// Create a copy of PostPropertyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? status = null,Object? name = null,Object? description = null,Object? address = null,Object? price = null,Object? buildingArea = null,Object? landArea = null,Object? image = null,}) {
  return _then(_PostPropertyDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,buildingArea: null == buildingArea ? _self.buildingArea : buildingArea // ignore: cast_nullable_to_non_nullable
as int,landArea: null == landArea ? _self.landArea : landArea // ignore: cast_nullable_to_non_nullable
as int,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
