import 'package:flutter/material.dart';
import 'package:tourist_app/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Need to Define themes TODO - 1
    return MaterialApp(
      title: 'Trave Tou',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}
