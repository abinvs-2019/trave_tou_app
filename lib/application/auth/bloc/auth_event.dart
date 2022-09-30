part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.googleLogin() = _G_Login;
  const factory AuthEvent.getSession() = _APP_SESSION;
  const factory AuthEvent.logout() = _APP_Logout;
}
