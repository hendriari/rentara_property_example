import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_location_entities.freezed.dart';

@freezed
abstract class CurrentLocationEntities with _$CurrentLocationEntities {
  factory CurrentLocationEntities({required double lat, required double long}) =
      _CurrentLocationEntities;
}
