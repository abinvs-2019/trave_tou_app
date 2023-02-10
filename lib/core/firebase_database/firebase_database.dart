import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';

abstract class FirebaseUpload {
  Future<Either<String, String>> firebaseStroageUpload(File filePath);
}
