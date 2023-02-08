import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tourist_app/core/auth/google_auth/logged_in.dart';

abstract class IGoogleSigning {
  ///SingIn With Google Function
  Future<Either<User?, String>> _signInWithGoogle();

  ///SingOut With Google
  Future _signOut();
}
