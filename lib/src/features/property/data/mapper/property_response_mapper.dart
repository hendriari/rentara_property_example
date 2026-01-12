import 'package:rentara_property_clone/src/features/property/data/dto/property_response/property_response_dto.dart';
import 'package:rentara_property_clone/src/features/property/data/mapper/property_mapper.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';

extension PropertyResponseDtoMapper on PropertyResponseDto {
  PropertyResponseEntities toEntity() {
    return PropertyResponseEntities(
      data: data?.map((e) => e.toEntity()).toList() ?? const [],
      nextPage: nextPageUrl,
    );
  }
}
