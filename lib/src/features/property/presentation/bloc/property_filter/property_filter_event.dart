import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_filter_event.freezed.dart';

@freezed
abstract class PropertyFilterEvent with _$PropertyFilterEvent {
  factory PropertyFilterEvent.updateStatus({required String status}) =
  PropertyFilterUpdateStatusEvent;

  factory PropertyFilterEvent.updateLocation({required List<String> location}) =
  PropertyFilterUpdateLocationEvent;

  factory PropertyFilterEvent.updateType({required List<String> type}) =
  PropertyFilterUpdateTypeEvent;

  factory PropertyFilterEvent.updatePrice({
    required double minPrice,
    required double maxPrice,
  }) = PropertyFilterUpdatePriceEvent;

  factory PropertyFilterEvent.reset() = PropertyFilterResetEvent;
}
