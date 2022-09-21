import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tourist_app/core/auth/auth.dart';
import 'package:tourist_app/core/auth/google_auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Auth _googleSigning;
  AuthBloc(this._googleSigning) : super(AuthState.initial()) {
    on<_G_Login>((event, emit) async {
      emit(state.copyWith(isLogging: true));
      Either<User?, String> singIn = await _googleSigning.signInWithGoogle();
      singIn.fold((l) {
        _googleSigning.postLoggedInData();
        emit(state.copyWith(isLogging: false, isLoggedIn: true));
      },
          (r) => emit(state.copyWith(
              isLogging: false, isLoggedIn: false, isError: true)));
    });
  }
}
