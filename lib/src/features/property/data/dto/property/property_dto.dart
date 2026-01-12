import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_dto.freezed.dart';
part 'property_dto.g.dart';

@freezed
abstract class PropertyDto with _$PropertyDto {
  const factory PropertyDto({
    required int? id,
    required String? type,
    required String? status,
    required String? name,
    required String? description,
    required String? address,
    required String? price,
    required String? imageUrl,
    required int? buildingArea,
    required int? landArea,
    required String? createdAt,
    required String? updatedAt,
  }) = _PropertyDto;

  factory PropertyDto.fromJson(Map<String, dynamic> json) =>
      _$PropertyDtoFromJson(json);
}
