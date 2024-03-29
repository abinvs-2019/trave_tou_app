import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tourist_app/application/chat/bloc/chat_bloc.dart';
import 'package:tourist_app/application/file_transfer_firebase/file_transfer_bloc.dart';

import '../../config/firestore_collection.dart';

class ConverstaionRoom extends StatelessWidget {
  ConverstaionRoom(
      {super.key,
      required this.userUUID,
      required this.token,
      required this.userName});
  final String userUUID, token, userName;
  final TextEditingController controller = TextEditingController();
  final AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<ChatBloc>()
          .add(ChatEvent.getChatOnUsersId(userUid: userUUID));
    });
    return Scaffold(
      appBar: AppBar(title: Text(userName)),
      body: BlocBuilder<ChatBloc, ChatState>(
        builder: (context, state) {
          return state.isLoading
              ? const Center(child: CircularProgressIndicator())
              : state.isError
                  ? const Center(
                      child: Text('Error Occured while loading chats'))
                  : SingleChildScrollView(
                      reverse: true,
                      child: Column(
                        children: [
                          StreamBuilder(
                              stream: FirebaseFirestore.instance
                                  .collection(Collections.CHAT_DATA)
                                  .doc(state.chatId)
                                  .collection("chats")
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
                                        itemCount:
                                            snapshot.data?.docs.length ?? 0,
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
                                              alignment: (data['isSentBy'] ==
                                                      "${state.myId}"
                                                  ? Alignment.topRight
                                                  : Alignment.topLeft),
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
                                                  color: (data['isSentBy'] ==
                                                          "${state.myId}"
                                                      ? const Color.fromARGB(
                                                          255, 93, 93, 93)
                                                      : const Color.fromARGB(
                                                          255, 52, 111, 54)),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15,
                                                        vertical: 5),
                                                child: Column(
                                                  crossAxisAlignment: data[
                                                              'isSentBy'] ==
                                                          "${state.myId}"
                                                      ? CrossAxisAlignment.start
                                                      : CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      data['msg'].toString(),
                                                      style: const TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        const SizedBox.shrink(),
                                                        Text(
                                                          '${date.day}${date.month}${date.year}',
                                                          style:
                                                              const TextStyle(
                                                                  fontSize: 5),
                                                        ),
                                                      ],
                                                    )
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

class CustomFileUploadWidget extends CloudImageWidget {
  final File imagePath;

  const CustomFileUploadWidget(this.imagePath,
      {required super.type, required super.imagePathUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .3,
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: Image.file(imagePath),
    );
  }
}

class CloudImageWidget extends StatelessWidget {
  const CloudImageWidget(
      {super.key, required FileType type, required this.imagePathUrl});
  final String imagePathUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .3,
      decoration: const BoxDecoration(shape: BoxShape.rectangle),
      child: Image.network(imagePathUrl),
    );
  }
}
