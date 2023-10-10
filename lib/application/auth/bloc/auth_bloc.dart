// ignore_for_file: await_only_futures

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourist_app/config/constants.dart';
import 'package:tourist_app/core/auth/google_auth/auth.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final Auth _googleSigning;

  AuthBloc(this._googleSigning) : super(AuthState.initial()) {
    int tapCount = 0;
    on<_G_Login>((event, emit) async {
      //This Tap count is a lock..
      //Even the app is transferred to another people this will only work
      //after five taps on the icon.
      //An only we knows that
      if (tapCount >= 5) {
        emit(state.copyWith(isLogging: true));
        Either<User?, String> singIn = await _googleSigning.signInWithGoogle();

        singIn.fold((l) async {
          _googleSigning.postLoggedInData(userData: l);
          emit(state.copyWith(
              isLogging: false,
              isLoggedIn: true,
              email: l!.email,
              profileImage: l.photoURL,
              name: l.displayName));
        }, (r) {
          Fluttertoast.showToast(msg: r);
          emit(state.copyWith(
              isLogging: false, isLoggedIn: false, isError: true));
        });
      } else {
        tapCount++;
      }
    });

    on<_APP_SESSION>((event, emit) async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      bool? session = await preferences.getBool(SESSION_KEY);
      var name = await preferences.getString(PROFILE_NAME_KEY);
      var profileImage = await preferences.getString(PROFILE_IMAGE_KEY);
      var email = await preferences.getString(PROFILE_EMAIL_KEY);
      if (session == null) {
        emit(state.copyWith(isLoggedIn: false));
      } else {
        if (session) {
          emit(state.copyWith(
              isLoggedIn: true,
              email: email,
              profileImage: profileImage,
              name: name));
        } else {
          emit(state.copyWith(isLoggedIn: false));
        }
      }
    });
    on<_APP_Logout>((event, emit) async {
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.clear();
      emit(state.copyWith(logout: true));
    });
  }
}
