// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_property_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostPropertyDto _$PostPropertyDtoFromJson(Map<String, dynamic> json) =>
    _PostPropertyDto(
      type: json['type'] as String,
      status: json['status'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      address: json['address'] as String,
      price: (json['price'] as num).toInt(),
      buildingArea: (json['building_area'] as num).toInt(),
      landArea: (json['land_area'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$PostPropertyDtoToJson(_PostPropertyDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'status': instance.status,
      'name': instance.name,
      'description': instance.description,
      'address': instance.address,
      'price': instance.price,
      'building_area': instance.buildingArea,
      'land_area': instance.landArea,
      'image': instance.image,
    };
