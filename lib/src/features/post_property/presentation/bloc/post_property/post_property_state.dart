import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_property_state.freezed.dart';

@freezed
abstract class PostPropertyState with _$PostPropertyState {
  const factory PostPropertyState.initial() = _Initial;

  const factory PostPropertyState.updatedImageSource({
    required String? source,
  }) = _UpdatedImageSource;

  const factory PostPropertyState.loadingPostProperty() = _LoadingPostProperty;

  const factory PostPropertyState.successPostProperty({
    required String message,
  }) = _SuccessPostProperty;

  const factory PostPropertyState.failedPostProperty({
    required String message,
  }) = _FailedPostProperty;
}
