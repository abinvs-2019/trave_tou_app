import 'dart:convert';
import 'dart:math';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:http/http.dart';

class CustomPushApi {
  // Crude counter to make messages unique
  int _messageCount = Random().nextInt(100);

  /// The API endpoint here accepts a raw FCM payload for demonstration purposes.
  String constructFCMPayload(String? token, {required String body}) {
    _messageCount++;
    return jsonEncode({
      'token': token,
      'data': {
        'via': 'FlutterFire Cloud Messaging!!!',
        'count': _messageCount.toString(),
      },
      'notification': {
        'title': 'Puthiya Message Und!',
        'body': '$body',
      },
    });
  }

  Future<void> sendPushMessage(
      {required String token, required String body}) async {
    if (token == null) {
      print('Unable to send FCM message, no token exists.');
      return;
    }
    try {
      Response response = await post(
        Uri.parse(
            'https://fcm.googleapis.com/v1/projects/myproject-b5ae1/messages:send'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization':
              'key=AAAAUgQaLGE:APA91bH_oH3d6mcOAOlTHo6ZWet6Peo8hAJxwA4max1p09Z4hwdhu_YJGn_zuBtrCh8nYOYldXJc9hEEmqSzqOmhIHIT6fJY6Zgy6cDyOFXekyATWQBKs3w6WmCBpGzD0qjNsjzG6Pdi',
        },
        body: constructFCMPayload(token, body: body),
      );
      print('FCM request for device sent! ${response.body}');
    } catch (e) {
      print(e);
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
