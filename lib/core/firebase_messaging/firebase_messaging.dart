
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:tourist_app/infrastructure/firestore/firestore.dart';

class FirebaseMessagingOverride {
  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
  //Creating the android channel
  AndroidNotificationChannel channel = const AndroidNotificationChannel(
      'high_importance_channel', // id
      'High Importance Notifications', // title
      // description
      importance: Importance.max,
      playSound: true);

  //Initializing the notification channels
  Future<void> init() async {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    await FirebaseMessaging.instance.requestPermission();
    try {
      FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
        FirbaseFunctions().updateToken(fcmToken);
      }).onError((err) {
        FirebaseMessaging.instance.getToken().then((value) {
          FirbaseFunctions().updateToken(value!);
        });
      });

      FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
              alert: true, badge: true, sound: true);
      await flutterLocalNotificationsPlugin!
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
    } catch (e) {
      print('Eroor on initilizong push notifictaion \n$e');
    }
  }

//Firebase notification trigger when on background
  Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    AppleNotification? ios = message.notification?.apple;

    flutterLocalNotificationsPlugin!.show(
      notification.hashCode,
      notification!.title!,
      notification.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          channel.id,
          channel.name,
          color: Colors.white,
          priority: Priority.max,
          importance: Importance.max,
          channelShowBadge: true,
          enableVibration: true,
          playSound: true,
          enableLights: true,
          icon: '@mipmap-hdpi/ic_launcher.png',
        ),
      ),
    );
  }

//Showing when in foreground
  Future<void> listenWhenForeGround() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      flutterLocalNotificationsPlugin!.show(
          notification.hashCode,
          notification!.title!,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              color: Colors.white,
              priority: Priority.max,
              importance: Importance.max,
              channelShowBadge: true,
              enableVibration: true,
              playSound: true,
              enableLights: true,
              icon: '@mipmap-hdpi/ic_launcher.png',
            ),
          ));
    });
  }
}
