import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/core/location/domain/entities/current_location_entities.dart';

part 'location_state.freezed.dart';

@freezed
abstract class LocationState with _$LocationState {
  const factory LocationState.initial() = _Initial;

  const factory LocationState.loading() = _Loading;

  const factory LocationState.success({
    required CurrentLocationEntities location,
  }) = _Success;

  const factory LocationState.serviceEnabled() = _ServiceEnabled;

  const factory LocationState.serviceDisabled() = _ServiceDisabled;

  const factory LocationState.failed({required String message}) = _Failed;
}
