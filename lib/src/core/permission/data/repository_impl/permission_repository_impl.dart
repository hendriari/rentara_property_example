import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rentara_property_clone/src/core/error/failure.dart';
import 'package:rentara_property_clone/src/core/error/failure_mapper.dart';
import 'package:rentara_property_clone/src/core/permission/domain/repository/permission_repository.dart';
import 'package:rentara_property_clone/src/core/utils/enums.dart';

class PermissionRepositoryImpl extends PermissionRepository {
  final DeviceInfoPlugin _deviceInfoPlugin;

  PermissionRepositoryImpl(this._deviceInfoPlugin);

  @override
  Future<void> openSetting() async {
    await openAppSettings();
  }

  @override
  Future<Either<Failure, AppPermissionStatus>> requestPermission(
    AppPermission appPermission,
  ) async {
    try {
      final perm = await _resolvePermission(appPermission);
      final status = await perm.request();
      return Right(_mapStatus(status));
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }

  @override
  Future<Either<Failure, AppPermissionStatus>> checkPermission(
    AppPermission appPermission,
  ) async {
    try {
      final perm = await _resolvePermission(appPermission);
      final status = await perm.status;
      return Right(_mapStatus(status));
    } catch (e) {
      return Left(FailureMapper.map(e));
    }
  }

  Future<Permission> _resolvePermission(AppPermission appPermission) async {
    switch (appPermission) {
      case AppPermission.location:
        return Permission.location;
      case AppPermission.camera:
        return Permission.camera;
      case AppPermission.storage:
        if (Platform.isAndroid) {
          final androidInfo = await _deviceInfoPlugin.androidInfo;
          if (androidInfo.version.sdkInt >= 33) {
            return Permission.photos;
          }
          return Permission.storage;
        }
        return Permission.storage;
    }
  }

  AppPermissionStatus _mapStatus(PermissionStatus status) {
    if (status.isGranted || status.isLimited) {
      return AppPermissionStatus.granted;
    } else if (status.isPermanentlyDenied) {
      return AppPermissionStatus.permanentlyDenied;
    } else {
      return AppPermissionStatus.denied;
    }
  }
}
