import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/core/utils/enums.dart';

part 'permission_state.freezed.dart';

@freezed
abstract class PermissionState with _$PermissionState {
  const factory PermissionState.initial() = _Initial;

  const factory PermissionState.loading() = _Loading;

  const factory PermissionState.success({
    required AppPermission permission,
    required AppPermissionStatus status,
  }) = _Success;

  const factory PermissionState.failed({
    required String message,
  }) = _Failed;
}
