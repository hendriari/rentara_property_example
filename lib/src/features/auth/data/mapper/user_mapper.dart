import 'package:rentara_property_clone/src/features/auth/domain/entities/user_entities.dart';
import 'package:rentara_property_clone/src/features/auth/data/dto/user_dto/user_dto.dart';

extension UserDtoMapper on UserDto {
  UserEntities toEntity() {
    return UserEntities(
      id: id,
      firstName: firstName,
      lastName: lastName,
      phone: phone,
      name: name,
      email: email,
      emailVerifiedAt: emailVerifiedAt,
      updatedAt: updatedAt,
    );
  }
}
