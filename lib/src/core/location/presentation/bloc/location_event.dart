import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_event.freezed.dart';

@freezed
abstract class LocationEvent with _$LocationEvent {
  const factory LocationEvent.getCurrentLocation() = LocationEventGetCurrentLocation;
}
