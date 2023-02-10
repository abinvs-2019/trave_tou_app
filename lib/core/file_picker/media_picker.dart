import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';

class MediaPicker {
  Future<Either<File, String>> pickFiles() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();
      if (result != null) {
        File file = File(result.files.single.path!);
        return Left(file);
      } else {
        return const Right('User Cancelled');
      }
    } catch (e) {
      return const Right('Error occured while picking files');
    }
  }
}
