// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PropertyResponseDto _$PropertyResponseDtoFromJson(Map<String, dynamic> json) =>
    _PropertyResponseDto(
      nextPageUrl: json['next_page_url'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => PropertyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PropertyResponseDtoToJson(
  _PropertyResponseDto instance,
) => <String, dynamic>{
  'next_page_url': instance.nextPageUrl,
  'data': instance.data?.map((e) => e.toJson()).toList(),
};
