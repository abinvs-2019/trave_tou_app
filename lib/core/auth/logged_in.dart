import 'package:dartz/dartz.dart';

abstract class ILoggedIn {
  Future<Either<String, String>> postLoggedInData();
}
