import 'package:rentara_property_clone/src/features/post_property/data/dto/post_property_dto.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/entities/post_property_entities.dart';

extension PostPropertyMapper on PostPropertyEntities {
  PostPropertyDto toDto() {
    return PostPropertyDto(
      type: type,
      status: status,
      name: name,
      description: description,
      address: address,
      price: price,
      buildingArea: buildingArea,
      landArea: landArea,
      image: image,
    );
  }
}
