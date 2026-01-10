import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/error/failure_mapper.dart';
import 'package:rentara_property_clone/src/core/services/local/local_keys.dart';
import 'package:rentara_property_clone/src/core/services/local/session_manager.dart';
import 'package:rentara_property_clone/src/core/services/local/shared_preference_request.dart';
import 'package:rentara_property_clone/src/core/utils/enums.dart';
import 'package:rentara_property_clone/src/features/auth/data/datasource/auth_local_datasource.dart';
import 'package:rentara_property_clone/src/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:rentara_property_clone/src/features/auth/data/mapper/user_mapper.dart';
import 'package:rentara_property_clone/src/features/auth/domain/entities/user_entities.dart';
import 'package:rentara_property_clone/src/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDatasource _remoteDatasource;
  final AuthLocalDatasource _localDatasource;
  final SharedPreferenceServices _prefs;
  final SessionManager _sessionManager;

  AuthRepositoryImpl(
    this._remoteDatasource,
    this._localDatasource,
    this._prefs,
    this._sessionManager,
  );

  @override
  Future<Either<Failure, UserEntities?>> getCurrentUserData() async {
    try {
      final data = await _localDatasource.getCurrentUserData();

      final parseData = data?.toEntity();

      return Right(parseData);
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }

  @override
  Future<Either<Failure, UserEntities>> login({
    required String email,
    required String password,
  }) async {
    try {
      final data = await _remoteDatasource.login(
        email: email,
        password: password,
      );

      await _sessionManager.setToken(data.accessToken);

      await _prefs.saveData(
        LocalKeys.userDataKey,
        SharedPreferenceDataType.string,
        jsonEncode(data.user.toJson()),
      );

      final userParse = data.user.toEntity();

      return Right(userParse);
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }

  @override
  Future<Either<Failure, UserEntities>> register({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String password,
  }) async {
    try {
      final data = await _remoteDatasource.register(
        firstName: firstName,
        lastName: lastName,
        phone: phone,
        email: email,
        password: password,
      );

      await _sessionManager.setToken(data.accessToken);

      await _prefs.saveData(
        LocalKeys.userDataKey,
        SharedPreferenceDataType.string,
        jsonEncode(data.user.toJson()),
      );

      final userParse = data.user.toEntity();

      return Right(userParse);
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }
}
