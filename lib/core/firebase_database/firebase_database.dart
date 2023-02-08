import 'dart:async';
import 'dart:io';

abstract class FirebaseUpload {
  Future<bool> firebaseStroageUpload(File filePath);
}
