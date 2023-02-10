import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_app/application/chat/bloc/chat_bloc.dart';
import 'package:tourist_app/application/file_transfer_firebase/file_transfer_bloc.dart';

import '../../config/firestore_collection.dart';

class ConverstaionRoom extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  ConverstaionRoom({super.key, required this.userUUID, required this.token});
  String userUUID, token;
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<ChatBloc>()
          .add(ChatEvent.getChatOnUsersId(userUid: userUUID));
    });
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : state.isError
                  ? const Center(child: Text('Error Occure while loading'))
                  : SingleChildScrollView(
                      reverse: true,
                      child: Column(
                        children: [
                          StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection(Collections.CHAT_DATA)
                                  .doc(state.myId)
                                  .collection(state.chatId!)
                                  .orderBy('time')
                                  .snapshots(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                } else if (!snapshot.hasData) {
                                  return const Text('No Chats yet...');
                                } else {
                                  return Column(
                                    children: [
                                      ListView.builder(
                                        itemCount: snapshot.data!.docs.length,
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        itemBuilder: (context, index) {
                                          //For playing audio if the lenght of builder is changes
                                          // Need refractor here.
                                          // if (previousListLengt >
                                          //     snapshot.data!.docs.length) {
                                          //   previousListLengt =
                                          //       snapshot.data!.docs.length;
                                          //   player.play(AssetSource(
                                          //       'audio/message_sent.mp3'));
                                          // }
                                          DocumentSnapshot data =
                                              snapshot.data!.docs[index];
                                          DateTime date = DateTime
                                              .fromMillisecondsSinceEpoch(
                                                  int.parse(data['time']));
                                          return Container(
                                            padding: const EdgeInsets.only(
                                                left: 14,
                                                right: 14,
                                                top: 10,
                                                bottom: 10),
                                            child: Align(
                                              alignment:
                                                  ('isSentBy' == "${state.myId}"
                                                      ? Alignment.topLeft
                                                      : Alignment.topRight),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft:
                                                          const Radius.circular(
                                                              10),
                                                      topRight:
                                                          const Radius.circular(
                                                              10),
                                                      bottomLeft: 'isSentBy' ==
                                                              "${state.myId}"
                                                          ? const Radius
                                                              .circular(10)
                                                          : const Radius
                                                              .circular(10),
                                                      bottomRight:
                                                          const Radius.circular(
                                                              1)),
                                                  color: ('isSentBy' ==
                                                          "${state.myId}"
                                                      ? Colors.grey.shade200
                                                      : Colors.green),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15,
                                                        vertical: 5),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      data['msg'].toString(),
                                                      style: const TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    Text(date.toString())
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      const SizedBox(height: 70)
                                    ],
                                  );
                                }
                              })
                        ],
                      ),
                    );
        },
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
        height: 70,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                context
                    .read<FileTransferBloc>()
                    .add(const FileTransferEvent.upload());
              },
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(30)),
                child: const Icon(Icons.add, color: Colors.white, size: 20),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    hintText: "Message", border: InputBorder.none),
              ),
            ),
            const SizedBox(width: 15),
            Padding(
              padding: const EdgeInsets.all(3),
              child: FloatingActionButton(
                onPressed: () {
                  if (controller.text.isNotEmpty) {
                    player.play(AssetSource('audio/message_sent.mp3'));
                    context.read<ChatBloc>().add(ChatEvent.sendMessage(
                        fileType: FileType.chat,
                        message: controller.text,
                        token: token));
                    controller.clear();
                  }
                },
                backgroundColor: Colors.teal,
                elevation: 0,
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum FileType { img, video, audio, chat }

class CustomFileUploadWidget extends StatelessWidget {
  CustomFileUploadWidget(
      {super.key, required FileType type, required this.imagePath});
  File imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .3,
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: Image.file(imagePath),
    );
  }
}

class CustomFileDownloadWidget extends StatelessWidget {
  CustomFileDownloadWidget(
      {super.key, required FileType type, required this.imagePathUrl});
  String imagePathUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .3,
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: Image.network(imagePathUrl),
    );
  }
}
