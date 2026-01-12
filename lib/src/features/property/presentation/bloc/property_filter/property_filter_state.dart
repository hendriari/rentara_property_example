import 'package:freezed_annotation/freezed_annotation.dart';

part 'property_filter_state.freezed.dart';

@freezed
abstract class PropertyFilterState with _$PropertyFilterState {
  factory PropertyFilterState.initial({
    @Default(null) String? status,
    @Default(null) List<String>? location,
    @Default(null) List<String>? type,
    @Default(null) double? minPrice,
    @Default(null) double? maxPrice,
  }) = _Init;

  factory PropertyFilterState.updatedFilter({
    @Default(null) String? status,
    @Default(null) List<String>? location,
    @Default(null) List<String>? type,
    @Default(null) double? minPrice,
    @Default(null) double? maxPrice,
  }) = _UpdatedFilter;

  factory PropertyFilterState.resetFilter({
    @Default(null) String? status,
    @Default(null) List<String>? location,
    @Default(null) List<String>? type,
    @Default(null) double? minPrice,
    @Default(null) double? maxPrice,
  }) = _ResetFilter;
}
