import 'dart:convert';
import 'dart:math';
import 'dart:developer' as dev;
import 'package:http/http.dart';

class CustomPushApi {
  // Crude counter to make messages unique

  /// The API endpoint here accepts a raw FCM payload for demonstration purposes.
  String constructFCMPayload(String? token, {required String body}) {
    return jsonEncode({
      "data": {"score": "5x1", "time": "15:10"},
      "to": token,
      "direct_boot_ok": true
    });
  }

  Future<void> sendPushMessage(
      {required String token, required String body}) async {
    try {
      Response response = await post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization':
              'key=',
        },
        body: constructFCMPayload(token, body: body),
      );
    } catch (e) {
      dev.log(e.toString());
    }
  }




  static sendCustomPush(
      {required String token,
      required String body,
      required String title}) async {
    try {
      String url = 'https://fcm.googleapis.com/fcm/send';
      Map<String, String> header = {
        "Content-Type": "application/json",
        "Authorization":
            "key=",
      };
      Map<String, Object> request = {
        'notification': {'title': title, 'body': body},
        'data': {
          'click_action': 'FLUTTER_NOTIFICATION_CLICK',
          'type': 'COMMENT'
        },
        'to': token
      };

      Client client = Client();
      await client.post(Uri.parse(url),
          headers: header, body: json.encode(request));

      return true;
    } catch (e, s) {
      print(e);
      return false;
    }
  }
}
