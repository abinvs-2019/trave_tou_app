import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tourist_app/core/auth/logged_in.dart';

abstract class IGoogleSigning implements LoggedIn {
  ///SingIn With Google Function
  Future<Either<User?, String>> signInWithGoogle();

  /// SignOut Function
  logoutWithGoogle();

  @override
  postLoggedInData();
}
