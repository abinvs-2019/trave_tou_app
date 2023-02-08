import 'dart:convert';
import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:http/http.dart';

class CustomPushApi {
  static sendCustomPush(
      {required String token,
      required String body,
      required String title}) async {

    try {
      String url = 'https://fcm.googleapis.com/fcm/send';
      Map<String, String> header = {
        "Content-Type": "application/json",
        "Authorization":
            "key=AAAAUgQaLGE:APA91bH_oH3d6mcOAOlTHo6ZWet6Peo8hAJxwA4max1p09Z4hwdhu_YJGn_zuBtrCh8nYOYldXJc9hEEmqSzqOmhIHIT6fJY6Zgy6cDyOFXekyATWQBKs3w6WmCBpGzD0qjNsjzG6Pdi",
      };
      Map<String, Object> request = {
        'notification': {'title': title, 'body': body},
        'data': {
          'click_action': 'FLUTTER_NOTIFICATION_CLICK',
          'type': 'COMMENT'
        },
        'to': 'fcmtoken'
      };

      Client client = Client();
      Response response = await client.post(Uri.parse(url),
          headers: header, body: json.encode(request));
      print(response.body);
      return true;
    } catch (e, s) {
      print(e);
      return false;
    }
  }
}
