import 'package:rentara_property_clone/src/core/injector/injector.dart';
import 'package:rentara_property_clone/src/core/utils/helper.dart';
import 'package:rentara_property_clone/src/features/property/data/dto/property/property_dto.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property/property_entities.dart';

extension PropertyDtoMapper on PropertyDto {
  PropertyEntities toEntity() {
    return PropertyEntities(
      id: id ?? 0,
      type: type ?? '',
      status: status ?? '',
      name: name ?? '',
      description: description ?? '',
      address: address ?? '',
      price: injector<Helper>().formatStringToNumberCurrency(
        value: price ?? '0',
      ),
      imageUrl: imageUrl,
      buildingArea: buildingArea ?? 0,
      landArea: landArea ?? 0,
      createdAt:
          DateTime.tryParse(createdAt ?? '') ??
          DateTime.fromMillisecondsSinceEpoch(0),

      updatedAt:
          DateTime.tryParse(updatedAt ?? '') ??
          DateTime.fromMillisecondsSinceEpoch(0),
    );
  }
}
