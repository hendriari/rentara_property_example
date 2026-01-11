import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entities.freezed.dart';

@freezed
abstract class UserEntities with _$UserEntities {
  factory UserEntities({
    int? id,
    String? firstName,
    String? lastName,
    String? phone,
    String? name,
    String? email,
    String? emailVerifiedAt,
    String? updatedAt,
  }) = _UserEntities;
}
