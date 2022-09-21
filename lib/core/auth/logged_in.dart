import 'package:dartz/dartz.dart';

abstract class LoggedIn {
  Future<Either<String, String>> postLoggedInData();
}
