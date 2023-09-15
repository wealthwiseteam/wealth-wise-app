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

  final appPrefs = getIt<AppPrefs>();
  Future<void> register(RegisterRequest request) async {
    emit(RegisterLoadingState());
    final either = await repo.register(request);

    either.fold(
      (failure) {
        emit(AuthnErrorState(failure.message));
      },
      (response) {
        appPrefs.setToken(response.token);
        appPrefs.setUserLoggedIn(true);
        emit(RegisterSuccessState());
      },
    );
  }
}
