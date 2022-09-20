import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourist_app/config/constants.dart';

class AppSessions {
  getSession() async {
    final prefs = await SharedPreferences.getInstance();
    var value = prefs.getString(SESSION_KEY);
    return value;
  }
}
