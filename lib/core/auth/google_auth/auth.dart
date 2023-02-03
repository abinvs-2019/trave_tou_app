import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourist_app/config/constants.dart';
import 'package:tourist_app/config/firestore_collection.dart';
import 'package:tourist_app/core/auth/google_auth/google_auth.dart';
import 'package:tourist_app/core/auth/google_auth/logged_in.dart';
import 'package:tourist_app/infrastructure/firestore/firestore.dart';

@LazySingleton(as: IGoogleSigning)
@injectable
class Auth implements IGoogleSigning, ILoggedIn {
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
    if (user != null) {
      return Left(user);
    } else {
      return const Right('Missing-USER_DATA');
    }
  }

  //Need to store shared preference data if logged in bool value
  //Need to store google auth data to firestore
  @override
  Future postLoggedInData({User? userData}) async {
    var prefs = await SharedPreferences.getInstance();
    await prefs.setBool(SESSION_KEY, true);
    await prefs.setString(PROFILE_EMAIL_KEY, userData!.email!);
    await prefs.setString(PROFILE_IMAGE_KEY, userData.photoURL!);
    await prefs.setString(PROFILE_NAME_KEY, userData.displayName!);
    await prefs.setString(USER_IDENTITY_KEY, userData.uid);

    ///Checking if the user already exist
    var isEsxistEmail = await FirebaseFirestore.instance
        .collection(Collections.USERS)
        .where('email', isEqualTo: userData.email!)
        .get();
    if (isEsxistEmail.docs.isEmpty) {
      FirestoreFunctions().addDataToCollection(Collections.USERS, {
        'USER_NAME': userData.displayName,
        'Profile_image': userData.photoURL,
        'Phone_Number': userData.phoneNumber,
        'uuid': userData.uid,
        'email': userData.email,
        'role': ''
      });
    } else {
      Fluttertoast.showToast(msg: 'Welcome Back');
    }
  }

  @override
  Future clearLoggedInData() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setBool(SESSION_KEY, true);
  }

  @override
  Future signOut() async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signOut();
    return true;
  }
}
