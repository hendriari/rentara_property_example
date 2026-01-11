import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  factory AuthEvent.login({required String email, required String password}) =
      AuthEventLogin;

  factory AuthEvent.register({
    required String firstName,
    required String lastName,
    required String phone,
    required String email,
    required String password,
  }) = AuthEventRegister;

  factory AuthEvent.getCurrentUserData() = AuthEventGetCurrentUserData;

  factory AuthEvent.logout() = AuthEventLogout;
}
