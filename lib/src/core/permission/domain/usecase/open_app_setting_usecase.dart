import 'package:rentara_property_clone/src/core/permission/domain/repository/permission_repository.dart';

class OpenAppSettingUsecase {
  final PermissionRepository _repository;

  OpenAppSettingUsecase(this._repository);

  Future<void> call() async => await _repository.openSetting();
}
