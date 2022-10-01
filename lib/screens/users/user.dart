import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_app/application/auth/bloc/auth_bloc.dart';

import '../../config/firestore_collection.dart';

class UsersList extends StatelessWidget {
  const UsersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Briends')),
      body: StreamBuilder(
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
                          },
                        ),
                        trailing: BlocBuilder<AuthBloc, AuthState>(
                          builder: (context, state) {
                            if (data['USER_NAME'] != state.name) {
                              return data['role'] == null || data['role'] == ''
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
    );
  }
}
