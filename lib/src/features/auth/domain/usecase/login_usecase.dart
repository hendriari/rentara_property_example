import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/auth/domain/entities/user_entities.dart';
import 'package:rentara_property_clone/src/features/auth/domain/repository/auth_repository.dart';

class LoginUsecase {
  final AuthRepository _repository;

  LoginUsecase(this._repository);

  Future<Either<Failure, UserEntities?>> call({
    required String email,
    required String password,
  }) async => await _repository.login(email: email, password: password);
}
