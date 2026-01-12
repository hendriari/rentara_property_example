import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_property_dto.freezed.dart';
part 'post_property_dto.g.dart';

@freezed
abstract class PostPropertyDto with _$PostPropertyDto {
  const factory PostPropertyDto({
    required String type,
    required String status,
    required String name,
    required String description,
    required String address,
    required int price,
    required int buildingArea,
    required int landArea,
    required String image,
  }) = _PostPropertyDto;

  factory PostPropertyDto.fromJson(Map<String, dynamic> json) =>
      _$PostPropertyDtoFromJson(json);
}
