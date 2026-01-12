// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyDto _$PropertyDtoFromJson(Map<String, dynamic> json) => _PropertyDto(
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  status: json['status'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  address: json['address'] as String?,
  price: json['price'] as String?,
  imageUrl: json['image_url'] as String?,
  buildingArea: (json['building_area'] as num?)?.toInt(),
  landArea: (json['land_area'] as num?)?.toInt(),
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
);

Map<String, dynamic> _$PropertyDtoToJson(_PropertyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'status': instance.status,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'price': instance.price,
      'image_url': instance.imageUrl,
      'building_area': instance.buildingArea,
      'land_area': instance.landArea,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
