import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_entities.freezed.dart';

@freezed
abstract class PropertyEntities with _$PropertyEntities {
  const factory PropertyEntities({
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
    required DateTime? createdAt,
    required DateTime? updatedAt,
  }) = _PropertyEntities;
}
