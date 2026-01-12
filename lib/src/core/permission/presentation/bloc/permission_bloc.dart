import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/core/permission/domain/usecase/check_permission_usecase.dart';
import 'package:rentara_property_clone/src/core/permission/domain/usecase/open_app_setting_usecase.dart';
import 'package:rentara_property_clone/src/core/permission/domain/usecase/request_permission_usecase.dart';
import 'package:rentara_property_clone/src/core/permission/presentation/bloc/permission_event.dart';
import 'package:rentara_property_clone/src/core/permission/presentation/bloc/permission_state.dart';

class PermissionBloc extends Bloc<PermissionEvent, PermissionState> {
  final RequestPermissionUsecase requestPermissionUsecase;
  final CheckPermissionUsecase checkPermissionUsecase;
  final OpenAppSettingUsecase openAppSettingUsecase;

  PermissionBloc({
    required this.requestPermissionUsecase,
    required this.checkPermissionUsecase,
    required this.openAppSettingUsecase,
  }) : super(const PermissionState.initial()) {
    on<PermissionEventRequestPermission>(_onRequestPermission);
    on<PermissionEventCheckPermission>(_onCheckPermission);
    on<PermissionEventOpenSetting>(_onOpenSetting);
  }

  Future<void> _onRequestPermission(
    PermissionEventRequestPermission event,
    Emitter<PermissionState> emit,
  ) async {
    emit(const PermissionState.loading());

    final result = await requestPermissionUsecase.call(event.permission);

    result.fold(
      (failure) => emit(PermissionState.failed(message: failure.message)),
      (status) => emit(
        PermissionState.success(permission: event.permission, status: status),
      ),
    );
  }

  Future<void> _onCheckPermission(
    PermissionEventCheckPermission event,
    Emitter<PermissionState> emit,
  ) async {
    emit(const PermissionState.loading());

    final result = await checkPermissionUsecase.call(event.permission);

    result.fold(
      (failure) => emit(PermissionState.failed(message: failure.message)),
      (status) => emit(
        PermissionState.success(permission: event.permission, status: status),
      ),
    );
  }

  Future<void> _onOpenSetting(
    PermissionEventOpenSetting event,
    Emitter<PermissionState> emit,
  ) async {
    await openAppSettingUsecase.call();
  }
}
