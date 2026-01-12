import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/features/property/domain/entities/property_response/property_response_entities.dart';

part 'property_state.freezed.dart';

@freezed
abstract class PropertyState with _$PropertyState {
  factory PropertyState.init({
    @Default(null) PropertyResponseEntities? property,
  }) = _Init;

  factory PropertyState.loadingGetProperty({
    @Default(null) PropertyResponseEntities? property,
  }) = _LoadingGetProperty;

  factory PropertyState.successGetProperty({
    @Default(null) PropertyResponseEntities? property,
  }) = _SuccessGetProperty;

  factory PropertyState.errorGetProperty({
    @Default(null) PropertyResponseEntities? property,
    required String message,
  }) = _ErrorGetProperty;
}
