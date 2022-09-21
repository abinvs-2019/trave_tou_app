import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:tourist_app/core/auth/google_auth.dart';

@LazySingleton(as: IGoogleSigning)
class Auth implements IGoogleSigning {
  @override
  Future<Either<User?, String>> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        try {
          final UserCredential userCredential =
              await auth.signInWithCredential(credential);
          user = userCredential.user;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'account-exists-with-different-credential') {
            return const Right('account-exists-with-different-credential');
          } else if (e.code == 'invalid-credential') {
            return Right(e.code.toString());
          }
        } catch (e) {
          return const Right('Firebase-Error-Occured');
        }
      }
    } catch (e) {
      return const Right('Google-SingInError-Occured');
    }
    return Left(user);
  }

  @override
  logoutWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signOut();
  }

  //Need to store shared preference data if logged in bool value
  //Need to store google auth data to firestore
  @override
  Future<Either<String, String>> postLoggedInData() async {
    return const Right('_r');
  }
}
