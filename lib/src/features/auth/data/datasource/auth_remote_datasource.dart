import 'package:rentara_property_clone/src/core/api_config/api_url_config.dart';
import 'package:rentara_property_clone/src/core/error/exceptions.dart';
import 'package:rentara_property_clone/src/core/services/remote/dio_services.dart';
import 'package:rentara_property_clone/src/features/auth/data/dto/auth_response_dto/auth_response_dto.dart';

abstract class AuthRemoteDatasource {
  Future<AuthResponseDto> login({
    required String email,
    required String password,
  });

  Future<AuthResponseDto> register({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String password,
  });
}

class AuthRemoteDatasourceImpl extends AuthRemoteDatasource {
  final DioServices _dioServices;
  final ApiUrlConfig _urlConfig;

  AuthRemoteDatasourceImpl(this._dioServices, this._urlConfig);

  @override
  Future<AuthResponseDto> login({
    required String email,
    required String password,
  }) async {
    final res = await _dioServices.post(
      path: _urlConfig.login,
      body: {"email": email, "password": password},
    );

    if (res == null || res.statusCode != 200) {
      throw ServerException(message: "Invalid Response");
    }

    return AuthResponseDto.fromJson(res.data["data"]);
  }

  @override
  Future<AuthResponseDto> register({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String password,
  }) async {
    final res = await _dioServices.post(
      path: _urlConfig.register,
      body: {
        "first_name": firstName,
        "last_name": lastName,
        "phone": phone,
        "email": email,
        "password": password,
      },
    );

    if (res == null || res.statusCode != 200) {
      throw ServerException(message: "Invalid Response");
    }

    return AuthResponseDto.fromJson(res.data["data"]);
  }
}
