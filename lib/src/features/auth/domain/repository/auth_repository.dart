import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/features/auth/domain/entities/user_entities.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntities>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntities>> register({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String password,
  });

  Future<Either<Failure, UserEntities?>> getCurrentUserData();
}
