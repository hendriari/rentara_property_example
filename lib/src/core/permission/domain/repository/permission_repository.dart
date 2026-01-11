import 'package:dartz/dartz.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/utils/enums.dart';

abstract class PermissionRepository {
  Future<Either<Failure, AppPermissionStatus>> requestPermission(
    AppPermission appPermission,
  );

  Future<Either<Failure, AppPermissionStatus>> checkPermission(
    AppPermission appPermission,
  );

  Future<void> openSetting();
}
