import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_app/application/auth/bloc/auth_bloc.dart';
import 'package:tourist_app/core/di/di.dart';
import 'package:tourist_app/screens/chat_rooms/conversation.dart';
import 'package:tourist_app/screens/trip/trip_adding.dart';

import '../../config/firestore_collection.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key, required this.selectable});
  final bool selectable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Briends')),
      body: selectable
          ? StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection(Collections.USERS)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (!snapshot.hasData) {
                  return const Text('No Data...');
                } else {
                  return ListViewBody(snapshot: snapshot);
                }
              })
          : StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection(Collections.USERS)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (!snapshot.hasData) {
                  return const Text('No Data...');
                } else {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot data = snapshot.data!.docs[index];
                        return ListTile(
                            leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(data['Profile_image'])),
                            onTap: () {
                              // Need to see photo briefly
                            },
                            title: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                              if (data['USER_NAME'] == state.name) {
                                return const Text('Me');
                              }
                              return Text(data['USER_NAME']);
                            }),
                            trailing: IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ConverstaionRoom(
                                                  userName: data['USER_NAME'],
                                                  userUUID: data['uuid'],
                                                  token: data['token'])));
                                },
                                icon: const Icon(Icons.message)));
                      });
                }
              }),
    );
  }
}

class ListViewBody extends StatefulWidget {
  const ListViewBody({super.key, required this.snapshot});
  final AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot;
  @override
  State<ListViewBody> createState() => _ListViewBodyState();
}

class _ListViewBodyState extends State<ListViewBody> {
  List<bool> selectable = [];
  List user = [];
  @override
  void initState() {
    super.initState();
    selectable = List.filled(widget.snapshot.data!.docs.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.snapshot.data!.docs.length,
        itemBuilder: (context, index) {
          DocumentSnapshot data = widget.snapshot.data!.docs[index];
          return CheckboxListTile(
            value: selectable[index],
            // title: CircleAvatar(
            //     backgroundImage: NetworkImage(data['Profile_image'])),

            title: data['USER_NAME'] == getIt<AuthBloc>().state.name
                ? const Text('Me')
                : Text(data['USER_NAME']),

            onChanged: (bool? value) {
              tripCreateModel = tripCreateModel.copyWith(users: user);
              setState(() {
                selectable[index] = value!;
                if (selectable[index] == true) {
                  if (!user.contains(data['USER_NAME'])) {
                    user.add(data['USER_NAME']);
                  }
                }
              });
            },
          );
        });
  }
}
