import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wealth_wise/data/models/auth/auth_request_model.dart';
import 'package:wealth_wise/data/repository/auth_repository.dart';
import 'package:wealth_wise/data/source/local/app_prefs.dart';
import 'package:wealth_wise/resources/service_locator/service_locator.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepository repo;
  AuthCubit(this.repo) : super(AuthInitial());

  static AuthCubit getInstance(BuildContext context) =>
      BlocProvider.of(context);

  /// Sinpper
  bool _spinner = false;
  bool get spinner {
    return _spinner;
  }

  void changeSnipper() {
    _spinner = !_spinner;
  }

  /// Auth
  final appPrefs = getIt<AppPrefs>();

  Future<void> register(RegisterRequest request) async {
    emit(RegisterLoadingState());
    final either = await repo.register(request);

    either.fold(
      (failure) {
        emit(RegisterErrorState(failure.message));
      },
      (response) {
        appPrefs.setToken(response.token);
        appPrefs.setUserLoggedIn(true);
        emit(RegisterSuccessState());
      },
    );
  }

  Future<void> login(LoginRequest request) async {
    emit(LoginLoadingState());
    final either = await repo.login(request);
    either.fold(
      (failure) {
        emit(LoginErrorState(failure.message));
      },
      (response) {
        appPrefs.setToken(response.token);
        appPrefs.setUserLoggedIn(true);
        emit(LoginSuccessState());
      },
    );
  }

  Future logout() async {
    emit(LogoutLoadingState());
    final either = await repo.logout();
    either.fold(
      (failure) {
        emit(LogoutErrorState(failure.message));
      },
      (isLogout) {
        appPrefs.removeToken();
        appPrefs.logout();
        emit(LoginSuccessState());
      },
    );
  }
}
