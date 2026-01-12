import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property/property_entities.dart';

part 'property_response_entities.freezed.dart';

@freezed
abstract class PropertyResponseEntities with _$PropertyResponseEntities {
  factory PropertyResponseEntities({
    final List<PropertyEntities>? data,
    final String? nextPage,
  }) = _PropertyResponseEntities;
}
