import 'package:firebase_auth/firebase_auth.dart';

abstract class ILoggedIn {
  Future postLoggedInData({User userData});
  Future clearLoggedInData();
}
