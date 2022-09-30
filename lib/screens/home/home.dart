import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_app/application/auth/bloc/auth_bloc.dart';
import 'package:tourist_app/config/firestore_collection.dart';
import 'package:tourist_app/screens/profile/profile.dart';
import 'package:tourist_app/screens/trip/trip_adding.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Upcoming Trips')),
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection(Collections.TRIP_DATA)
              .snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (!snapshot.hasData) {
              return const Text('No Data...');
            } else {
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot data = snapshot.data!.docs[index];
                    return ListTile(
                      leading: CircleAvatar(
                        child: Center(
                          child: Text(data['Trip_name']
                              .toString()
                              .characters
                              .take(1)
                              .toString()),
                        ),
                      ),
                      onTap: () {},
                      title: Text(
                        data['Trip_name'],
                      ),
                      trailing: Text('\u{20B9}${data['Expense']}'),
                      subtitle: Row(
                        children: [
                          Text(
                              '${data['TripFromDate'].toString().characters.take(10)}  -'),
                          Text(
                              '   ${data['TripToDate'].toString().characters.take(10)}')
                        ],
                      ),
                    );
                  });
            }
          }),
      drawer: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return Drawer(
              child: Drawer(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(children: [
                DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage('${state.profileImage}'),
                          fit: BoxFit.cover)),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('${state.name}')),
                ),
                ListTile(
                    title: const Text('Profile'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    }),
                ListTile(title: const Text('Friends'), onTap: () {}),
              ]),
              Container(
                  alignment: Alignment.bottomCenter,
                  child: const Text('All rights reserved',
                      style: TextStyle(color: Colors.grey, fontSize: 9)))
            ],
          )));
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const TripAdding()));
          },
          child: const Icon(Icons.add)),
    );
  }
}
