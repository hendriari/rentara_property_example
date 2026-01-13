import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';

part 'property_map_state.freezed.dart';

@freezed
abstract class PropertyMapState with _$PropertyMapState {
  factory PropertyMapState.init({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
  }) = _Init;

  factory PropertyMapState.loadingGetClustering({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
  }) = _LoadingGetClustering;

  factory PropertyMapState.successGetClustering({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
  }) = _SuccessGetClustering;

  factory PropertyMapState.failedGetClustering({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
    required String message,
  }) = _FailedGetClustering;

  factory PropertyMapState.loadingGetBulkProperty({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
  }) = _LoadingGetBulkProperty;

  factory PropertyMapState.successGetBulkProperty({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
  }) = _SuccessGetBulkProperty;

  factory PropertyMapState.failedGetBulkProperty({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
    required String message,
  }) = _FailedGetBulkProperty;

  factory PropertyMapState.loadingGetNextBulkProperty({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
  }) = _LoadingGetNextBulkProperty;

  factory PropertyMapState.successGetNextBulkProperty({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
  }) = _SuccessGetNextBulkProperty;

  factory PropertyMapState.failedGetNextBulkProperty({
    @Default(null) List<int>? currPropertyIds,
    @Default(null) PropertyResponseEntities? property,
    required String message,
  }) = _FailedGetNextBulkProperty;
}
