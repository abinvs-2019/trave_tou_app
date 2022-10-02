import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_app/application/auth/bloc/auth_bloc.dart';
import 'package:tourist_app/application/trip/bloc/trip_bloc.dart';
import 'package:tourist_app/core/di/di.dart';
import 'package:tourist_app/screens/auth/login.dart';
import 'package:tourist_app/screens/splash/splash.dart';
import 'package:tourist_app/screens/trip/trip_adding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => getIt<AuthBloc>()),
        BlocProvider<TripBloc>(create: (context) => getIt<TripBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trave Tou',
        themeMode: ThemeMode.dark,
        theme: ThemeData.dark(useMaterial3: true),
        home: const TripAdding(),
      ),
    );
  }
}
