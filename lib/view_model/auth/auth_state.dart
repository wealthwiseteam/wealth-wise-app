part of 'auth_cubit.dart';

@immutable
abstract class AuthState extends Equatable {
  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

/// register
abstract class RegisterState extends AuthState {}

class RegisterLoadingState extends RegisterState {}

class RegisterSuccessState extends RegisterState {}

class RegisterErrorState extends RegisterState {
  final String error;
  RegisterErrorState(this.error);

  @override
  List<Object?> get props => [error];
}

/// login
abstract class LoginState extends AuthState {}

class LoginLoadingState extends LoginState {}

class LoginSuccessState extends LoginState {}

class LoginErrorState extends LoginState {
  final String error;
  LoginErrorState(this.error);

  @override
  List<Object?> get props => [error];
}

/// Logout
abstract class LogoutState extends AuthState {}

class LogoutLoadingState extends LogoutState {}

class LogoutSuccessState extends LogoutState {}

class LogoutErrorState extends LogoutState {
  final String error;
  LogoutErrorState(this.error);

  @override
  List<Object?> get props => [error];
}

/// Forgot password
abstract class ForgotPasswordState extends AuthState {}

class ForgotPasswordLoadingState extends ForgotPasswordState {}

class ForgotPasswordSuccessState extends ForgotPasswordState {}

/// Verfiy Email
abstract class VerifyEmailState extends AuthState {}

class VerifyEmailLoadingState extends VerifyEmailState {}

class VerifyEmailSuccessState extends VerifyEmailState {}

/// reset Email
abstract class ResetPasswordState extends AuthState {}

class ResetPasswordLoadingState extends ResetPasswordState {}

class ResetPasswordSuccessState extends ResetPasswordState {}
