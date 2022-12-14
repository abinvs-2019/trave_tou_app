import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_app/application/auth/bloc/auth_bloc.dart';
import 'package:tourist_app/screens/trip/trip_adding.dart';

import '../../config/firestore_collection.dart';

class UsersList extends StatefulWidget {
  const UsersList({super.key, required this.selectable});
  final bool selectable;

  @override
  State<UsersList> createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Briends')),
      body: widget.selectable
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
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        DocumentSnapshot data = snapshot.data!.docs[index];
                        return ListTile(
                            leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(data['Profile_image'])),
                            onTap: () {},
                            title: BlocBuilder<AuthBloc, AuthState>(
                                builder: (context, state) {
                              if (data['USER_NAME'] == state.name) {
                                return const Text('Me');
                              }
                              return Text(data['USER_NAME']);
                            }),
                            trailing: BlocBuilder<AuthBloc, AuthState>(
                              builder: (context, state) {
                                if (data['USER_NAME'] != state.name) {
                                  return data['role'] == null ||
                                          data['role'] == ''
                                      ? IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.message))
                                      : Text(data['role']);
                                }
                                return const SizedBox();
                              },
                            ));
                      });
                }
              }),
      persistentFooterButtons: [
        Container(
          child: ElevatedButton(onPressed: () {}, child: const Text('Next')),
        )
      ],
    );
  }
}

class ListViewBody extends StatefulWidget {
  ListViewBody({super.key, required this.snapshot});
  AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot;
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
          print(selectable[index]);
          return CheckboxListTile(
            value: selectable[index],
            // title: CircleAvatar(
            //     backgroundImage: NetworkImage(data['Profile_image'])),

            title: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
              if (data['USER_NAME'] == state.name) {
                return const Text('Me');
              }
              return Text(data['USER_NAME']);
            }),
            onChanged: (bool? value) {
              setState(() {
                selectable[index] = value!;
                if (selectable[index] == true) {
                  if (!user.contains(data['USER_NAME'])) {
                    user.add(data['USER_NAME']);
                  }
                }
                tripCreateModel = tripCreateModel.copyWith(users: user);
              });
            },
          );
        });
  }
}
