part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState(
      {required bool isLogging,
      bool? isError,
      required bool isLoggedIn,
      String? name,
      String? email,
      String? profileImage,
      required bool? logout}) = _AuthState;

  factory AuthState.initial() {
    return const AuthState(isLogging: false, isLoggedIn: false, logout: false);
  }
}
