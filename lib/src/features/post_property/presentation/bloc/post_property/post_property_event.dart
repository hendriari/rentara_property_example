import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/entities/post_property_entities.dart';

part 'post_property_event.freezed.dart';

@freezed
abstract class PostPropertyEvent with _$PostPropertyEvent {
  const factory PostPropertyEvent.postProperty({
    required PostPropertyEntities data,
  }) = PostPropertyEventPostProperty;

  const factory PostPropertyEvent.reset() = PostPropertyEventReset;

  const factory PostPropertyEvent.pickImage({required String source}) =
      PostPropertyEventPickImage;
}
