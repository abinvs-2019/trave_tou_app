import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tourist_app/application/auth/bloc/auth_bloc.dart';
import 'package:tourist_app/application/chat/bloc/chat_bloc.dart';
import 'package:tourist_app/application/trip/bloc/trip_bloc.dart';
import 'package:tourist_app/core/di/di.dart';
import 'package:tourist_app/core/firebase_messaging/firebase_messaging.dart';
import 'package:tourist_app/screens/splash/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await Firebase.initializeApp();
  await FirebaseMessagingOverride().init();
  handlePermmision();
  runApp(const MyApp());
}

handlePermmision() async {
  await Permission.accessMediaLocation.request();
  await Permission.storage.request();
  await Permission.audio.request();
  await Permission.manageExternalStorage.request();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => getIt<AuthBloc>()),
        BlocProvider<TripBloc>(create: (context) => getIt<TripBloc>()),
        BlocProvider<ChatBloc>(create: (context) => getIt<ChatBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trave Tou',
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark(useMaterial3: true),
        home: const SplashScreen(),
      ),
    );
  }
}
