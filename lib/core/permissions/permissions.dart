import 'package:permission_handler/permission_handler.dart';

class Permissions {
  static handlePermmision() async {
    await Permission.accessMediaLocation.request();
    await Permission.storage.request();
    await Permission.audio.request();
    await Permission.manageExternalStorage.request();
  }
}
