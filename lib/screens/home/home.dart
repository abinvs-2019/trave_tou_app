import 'package:flutter/material.dart';
import 'package:tourist_app/screens/trip/trip_adding.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButton:
          FloatingActionButton(onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const TripAdding()));
          }, child: const Icon(Icons.add)),
    );
  }
}
