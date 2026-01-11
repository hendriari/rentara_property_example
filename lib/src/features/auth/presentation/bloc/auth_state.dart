import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rentara_property_clone/src/features/auth/domain/entities/user_entities.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  factory AuthState.init({@Default(null) UserEntities? user}) = _Initial;

  factory AuthState.loginLoading({@Default(null) UserEntities? user}) =
      _LoginLoading;

  factory AuthState.loginSuccess({@Default(null) UserEntities? user}) =
      _LoginSuccess;

  factory AuthState.loginFailed({
    @Default(null) UserEntities? user,
    required String message,
  }) = _LoginFailed;

  factory AuthState.registerLoading({@Default(null) UserEntities? user}) =
      _RegisterLoading;

  factory AuthState.registerSuccess({@Default(null) UserEntities? user}) =
      _RegisterSuccess;

  factory AuthState.registerFailed({
    @Default(null) UserEntities? user,
    required String message,
  }) = _RegisterFailed;

  factory AuthState.getCurrentUserDataLoading({
    @Default(null) UserEntities? user,
  }) = _GetCurrentUserDataLoading;

  factory AuthState.getCurrentUserDataSuccess({
    @Default(null) UserEntities? user,
  }) = _GetCurrentUserDataSuccess;

  factory AuthState.failed({
    @Default(null) UserEntities? user,
    required String message,
  }) = _Failed;

  factory AuthState.logoutLoading({@Default(null) UserEntities? user}) =
      _LogoutLoading;

  factory AuthState.logoutSuccess({
    @Default(null) UserEntities? user,
    required String message,
  }) = _LogoutSuccess;
}
