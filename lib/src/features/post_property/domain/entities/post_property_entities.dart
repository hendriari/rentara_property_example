import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_property_entities.freezed.dart';

@freezed
abstract class PostPropertyEntities with _$PostPropertyEntities {
  const factory PostPropertyEntities({
    required String type,
    required String status,
    required String name,
    required String description,
    required String address,
    required int price,
    required String image,
    required int buildingArea,
    required int landArea,
  }) = _PostPropertyEntities;
}
