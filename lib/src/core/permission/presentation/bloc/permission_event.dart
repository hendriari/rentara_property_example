import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/core/utils/enums.dart';

part 'permission_event.freezed.dart';

@freezed
abstract class PermissionEvent with _$PermissionEvent {
  const factory PermissionEvent.requestPermission({
    required AppPermission permission,
  }) = PermissionEventRequestPermission;

  const factory PermissionEvent.checkPermission({
    required AppPermission permission,
  }) = PermissionEventCheckPermission;

  const factory PermissionEvent.openSetting() = PermissionEventOpenSetting;
}
