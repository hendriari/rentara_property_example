import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/permission/domain/repository/permission_repository.dart';
import 'package:rentara_property_clone/src/core/utils/enums.dart';

class CheckPermissionUsecase {
  final PermissionRepository _repository;

  CheckPermissionUsecase(this._repository);

  Future<Either<Failure, AppPermissionStatus>> call(
    AppPermission appPermission,
  ) async => await _repository.checkPermission(appPermission);
}
