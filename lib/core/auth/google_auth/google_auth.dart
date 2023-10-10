import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IGoogleSigning {
  ///SingIn With Google Function
  Future<Either<User?, String>> signInWithGoogle();

  ///SingOut With Google
  Future signOut();
}
