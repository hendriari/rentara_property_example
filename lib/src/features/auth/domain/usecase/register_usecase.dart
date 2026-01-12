import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/auth/domain/entities/user_entities.dart';
import 'package:rentara_property_clone/src/features/auth/domain/repository/auth_repository.dart';

class RegisterUsecase {
  final AuthRepository _repository;

  RegisterUsecase(this._repository);

  Future<Either<Failure, UserEntities?>> call({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String password,
  }) async => await _repository.register(
    firstName: firstName,
    lastName: lastName,
    phone: phone,
    email: email,
    password: password,
  );
}
