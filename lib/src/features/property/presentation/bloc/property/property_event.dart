import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';

part 'property_event.freezed.dart';

@freezed
abstract class PropertyEvent with _$PropertyEvent {
  const factory PropertyEvent.getProperty({
    required String query,
    int? perPage,
    int? maxPrice,
    int? minPrice,
    String? status,
    String? type,
  }) = PropertyEventGetProperty;

  /// JANGAN GUNAKAN INI UNTUK ADD EVENT PADA UI,
  /// INI HANYA DIGUNAKAN UNTUK INTERNAAL PROPERTY BLOC AGAR DEBOUNCE SEARCHING AMAN
  /// KARENA KEBUTUHAN FREEZED, EVENT INI TIDAK BISA DIBUAT PRIVATE
  const factory PropertyEvent.onSearchPropertyDebounceInternal({
    required Either<Failure, PropertyResponseEntities?> result,
  }) = PropertyEventOnSearchPropertyDebounceInternal;

  const factory PropertyEvent.reset() = PropertyEventReset;

  const factory PropertyEvent.getNextProperty() = PropertyEventGetNextProperty;
}
