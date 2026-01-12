import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/features/property/data/dto/property/property_dto.dart';

part 'property_response_dto.freezed.dart';
part 'property_response_dto.g.dart';

@freezed
abstract class PropertyResponseDto with _$PropertyResponseDto {
  factory PropertyResponseDto({
    final String? nextPageUrl,
    final List<PropertyDto>? data,
  }) = _PropertyResponseDto;

  factory PropertyResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyResponseDtoFromJson(json);
}
