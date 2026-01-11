import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/auth/domain/entities/user_entities.dart';
import 'package:rentara_property_clone/src/features/auth/domain/repository/auth_repository.dart';

class GetCurrentUserDataUsecase {
  final AuthRepository _repository;

  GetCurrentUserDataUsecase(this._repository);

  Future<Either<Failure, UserEntities?>> call() async =>
      await _repository.getCurrentUserData();
}
