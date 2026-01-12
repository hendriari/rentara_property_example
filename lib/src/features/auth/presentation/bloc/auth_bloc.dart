import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rentara_property_clone/src/features/auth/domain/usecase/get_current_user_data_usecase.dart';
import 'package:rentara_property_clone/src/features/auth/domain/usecase/login_usecase.dart';
import 'package:rentara_property_clone/src/features/auth/domain/usecase/logout_usecase.dart';
import 'package:rentara_property_clone/src/features/auth/domain/usecase/register_usecase.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_event.dart';
import 'package:rentara_property_clone/src/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUsecase;
  final RegisterUsecase registerUsecase;
  final GetCurrentUserDataUsecase getCurrentUserDataUsecase;
  final LogoutUsecase logoutUsecase;

  AuthBloc({
    required this.loginUsecase,
    required this.registerUsecase,
    required this.getCurrentUserDataUsecase,
    required this.logoutUsecase,
  }) : super(AuthState.init()) {
    on<AuthEventLogin>(_onLogin);
    on<AuthEventRegister>(_onRegister);
    on<AuthEventGetCurrentUserData>(_onGetCurrentUser);
    on<AuthEventLogout>(_onLogout);
  }

  Future<void> _onLogin(AuthEventLogin event, Emitter<AuthState> emit) async {
    final isLoading = state.maybeWhen(
      loginLoading: (_) => true,
      orElse: () => false,
    );
    if (isLoading) return;

    emit(AuthState.loginLoading());

    final result = await loginUsecase.call(
      email: event.email,
      password: event.password,
    );

    result.fold(
      (failure) => emit(AuthState.loginFailed(message: failure.message)),
      (data) => emit(AuthState.loginSuccess(user: data)),
    );
  }

  Future<void> _onRegister(
    AuthEventRegister event,
    Emitter<AuthState> emit,
  ) async {
    final isLoading = state.maybeWhen(
      registerLoading: (_) => true,
      orElse: () => false,
    );
    if (isLoading) return;

    emit(AuthState.registerLoading());

    final result = await registerUsecase.call(
      firstName: event.firstName,
      lastName: event.lastName,
      phone: event.phone,
      email: event.email,
      password: event.password,
    );

    result.fold(
      (failure) => emit(AuthState.registerFailed(message: failure.message)),
      (data) => emit(AuthState.registerSuccess(user: data)),
    );
  }

  Future<void> _onGetCurrentUser(
    AuthEventGetCurrentUserData event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthState.getCurrentUserDataLoading());

    final result = await getCurrentUserDataUsecase.call();

    result.fold((failure) => AuthState.failed(message: failure.message), (
      data,
    ) {
      emit(AuthState.getCurrentUserDataSuccess(user: data));
    });
  }

  Future<void> _onLogout(AuthEventLogout event, Emitter<AuthState> emit) async {
    bool isLoading = state.maybeWhen(
      logoutLoading: (_) => true,
      orElse: () => false,
    );

    if (isLoading) return;

    emit(AuthState.logoutLoading(user: state.user));

    final result = await logoutUsecase.call();

    result.fold(
      (failure) =>
          emit(AuthState.failed(user: state.user, message: failure.message)),
      (data) {
        emit(AuthState.logoutSuccess(message: data, user: null));
      },
    );
  }
}
