import 'dart:convert';

import 'package:rentara_property_clone/src/core/error/exceptions.dart';
import 'package:rentara_property_clone/src/core/services/local/local_keys.dart';
import 'package:rentara_property_clone/src/core/services/local/shared_preference_request.dart';
import 'package:rentara_property_clone/src/features/auth/data/dto/user_dto/user_dto.dart';

abstract class AuthLocalDatasource {
  Future<UserDto?> getCurrentUserData();
}

class AuthLocalDatasourceImpl extends AuthLocalDatasource {
  final SharedPreferenceServices _preferenceServices;

  AuthLocalDatasourceImpl(this._preferenceServices);

  @override
  Future<UserDto?> getCurrentUserData() async {
    final currentData = await _preferenceServices.load(
      key: LocalKeys.userDataKey,
    );

    if (currentData == null || currentData.isEmpty) {
      return null;
    }

    try {
      return UserDto.fromJson(jsonDecode(currentData));
    } catch (_) {
      throw GeneralException(message: "Invalid cached user data");
    }
  }
}
