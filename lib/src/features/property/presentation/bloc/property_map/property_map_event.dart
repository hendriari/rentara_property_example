import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_map_event.freezed.dart';

@freezed
class PropertyMapEvent with _$PropertyMapEvent {
  const factory PropertyMapEvent.getClustering({
    required double swLat,
    required double swLng,
    required double neLat,
    required double neLng,
  }) = GetClustering;

  const factory PropertyMapEvent.getBulkProperty({
    List<int>? ids,
    String? viewMode,
    String? type,
    String? status,
    int? perPage,
    double? maxPrice,
    double? minPrice,
  }) = GetBulkProperty;

  const factory PropertyMapEvent.getNextBulkProperty() = GetNextBulkProperty;
}
