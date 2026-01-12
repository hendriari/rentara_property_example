// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PropertyDto {

 int? get id; String? get type; String? get status; String? get name; String? get description; String? get address; String? get price; String? get imageUrl; int? get buildingArea; int? get landArea; String? get createdAt; String? get updatedAt;
/// Create a copy of PropertyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyDtoCopyWith<PropertyDto> get copyWith => _$PropertyDtoCopyWithImpl<PropertyDto>(this as PropertyDto, _$identity);

  /// Serializes this PropertyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.buildingArea, buildingArea) || other.buildingArea == buildingArea)&&(identical(other.landArea, landArea) || other.landArea == landArea)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,status,name,description,address,price,imageUrl,buildingArea,landArea,createdAt,updatedAt);

@override
String toString() {
  return 'PropertyDto(id: $id, type: $type, status: $status, name: $name, description: $description, address: $address, price: $price, imageUrl: $imageUrl, buildingArea: $buildingArea, landArea: $landArea, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $PropertyDtoCopyWith<$Res>  {
  factory $PropertyDtoCopyWith(PropertyDto value, $Res Function(PropertyDto) _then) = _$PropertyDtoCopyWithImpl;
@useResult
$Res call({
 int? id, String? type, String? status, String? name, String? description, String? address, String? price, String? imageUrl, int? buildingArea, int? landArea, String? createdAt, String? updatedAt
});




}
/// @nodoc
class _$PropertyDtoCopyWithImpl<$Res>
    implements $PropertyDtoCopyWith<$Res> {
  _$PropertyDtoCopyWithImpl(this._self, this._then);

  final PropertyDto _self;
  final $Res Function(PropertyDto) _then;

/// Create a copy of PropertyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? status = freezed,Object? name = freezed,Object? description = freezed,Object? address = freezed,Object? price = freezed,Object? imageUrl = freezed,Object? buildingArea = freezed,Object? landArea = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,buildingArea: freezed == buildingArea ? _self.buildingArea : buildingArea // ignore: cast_nullable_to_non_nullable
as int?,landArea: freezed == landArea ? _self.landArea : landArea // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyDto].
extension PropertyDtoPatterns on PropertyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyDto value)  $default,){
final _that = this;
switch (_that) {
case _PropertyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyDto value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? type,  String? status,  String? name,  String? description,  String? address,  String? price,  String? imageUrl,  int? buildingArea,  int? landArea,  String? createdAt,  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyDto() when $default != null:
return $default(_that.id,_that.type,_that.status,_that.name,_that.description,_that.address,_that.price,_that.imageUrl,_that.buildingArea,_that.landArea,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? type,  String? status,  String? name,  String? description,  String? address,  String? price,  String? imageUrl,  int? buildingArea,  int? landArea,  String? createdAt,  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _PropertyDto():
return $default(_that.id,_that.type,_that.status,_that.name,_that.description,_that.address,_that.price,_that.imageUrl,_that.buildingArea,_that.landArea,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? type,  String? status,  String? name,  String? description,  String? address,  String? price,  String? imageUrl,  int? buildingArea,  int? landArea,  String? createdAt,  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _PropertyDto() when $default != null:
return $default(_that.id,_that.type,_that.status,_that.name,_that.description,_that.address,_that.price,_that.imageUrl,_that.buildingArea,_that.landArea,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PropertyDto implements PropertyDto {
  const _PropertyDto({required this.id, required this.type, required this.status, required this.name, required this.description, required this.address, required this.price, required this.imageUrl, required this.buildingArea, required this.landArea, required this.createdAt, required this.updatedAt});
  factory _PropertyDto.fromJson(Map<String, dynamic> json) => _$PropertyDtoFromJson(json);

@override final  int? id;
@override final  String? type;
@override final  String? status;
@override final  String? name;
@override final  String? description;
@override final  String? address;
@override final  String? price;
@override final  String? imageUrl;
@override final  int? buildingArea;
@override final  int? landArea;
@override final  String? createdAt;
@override final  String? updatedAt;

/// Create a copy of PropertyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyDtoCopyWith<_PropertyDto> get copyWith => __$PropertyDtoCopyWithImpl<_PropertyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PropertyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.status, status) || other.status == status)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.buildingArea, buildingArea) || other.buildingArea == buildingArea)&&(identical(other.landArea, landArea) || other.landArea == landArea)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,status,name,description,address,price,imageUrl,buildingArea,landArea,createdAt,updatedAt);

@override
String toString() {
  return 'PropertyDto(id: $id, type: $type, status: $status, name: $name, description: $description, address: $address, price: $price, imageUrl: $imageUrl, buildingArea: $buildingArea, landArea: $landArea, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$PropertyDtoCopyWith<$Res> implements $PropertyDtoCopyWith<$Res> {
  factory _$PropertyDtoCopyWith(_PropertyDto value, $Res Function(_PropertyDto) _then) = __$PropertyDtoCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? type, String? status, String? name, String? description, String? address, String? price, String? imageUrl, int? buildingArea, int? landArea, String? createdAt, String? updatedAt
});




}
/// @nodoc
class __$PropertyDtoCopyWithImpl<$Res>
    implements _$PropertyDtoCopyWith<$Res> {
  __$PropertyDtoCopyWithImpl(this._self, this._then);

  final _PropertyDto _self;
  final $Res Function(_PropertyDto) _then;

/// Create a copy of PropertyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? status = freezed,Object? name = freezed,Object? description = freezed,Object? address = freezed,Object? price = freezed,Object? imageUrl = freezed,Object? buildingArea = freezed,Object? landArea = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_PropertyDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,buildingArea: freezed == buildingArea ? _self.buildingArea : buildingArea // ignore: cast_nullable_to_non_nullable
as int?,landArea: freezed == landArea ? _self.landArea : landArea // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
