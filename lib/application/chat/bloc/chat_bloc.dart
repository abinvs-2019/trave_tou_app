import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourist_app/config/constants.dart';
import 'package:tourist_app/config/firestore_collection.dart';
import 'package:tourist_app/core/firebase_messaging/custom_send_push.dart';
import 'package:tourist_app/infrastructure/firestore/firestore.dart';
import 'package:tourist_app/screens/chat_rooms/conversation.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final FirbaseFunctions firestore;

  ChatBloc(this.firestore) : super(ChatState.initial()) {
    String? chatId;
    var myUId;

    on<_GetChatsId>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      SharedPreferences preferences = await SharedPreferences.getInstance();
      myUId = preferences.getString(USER_IDENTITY_KEY);
      chatId = '${myUId}${event.userUid}';
      var inverseChatId = '${event.userUid}${myUId}';

      var instanceofchatroom = await FirebaseFirestore.instance
          .collection(Collections.CHAT_DATA)
          .doc(chatId)
          .get();
      if (instanceofchatroom.exists == false) {
        print('doc does not exist ');
        instanceofchatroom = await FirebaseFirestore.instance
            .collection(Collections.CHAT_DATA)
            .doc(inverseChatId)
            .get();
        if (instanceofchatroom.exists == true) {
          print('doc does not exist inverseley');
          emit(state.copyWith(
              isLoading: false, chatId: inverseChatId, myId: myUId));
        } else {
          print('creating chat room');
          FirebaseFirestore.instance
              .collection(Collections.CHAT_DATA)
              .doc(chatId)
              .set({
            "users": [event.userUid, myUId]
          }).catchError((e) {
            print(e.toString());
          });
          emit(state.copyWith(isLoading: false, chatId: chatId, myId: myUId));
        }
      } else {
        print('chat room already exist');
        //If this instanceofchatroom is returning null then ther is no
        //chat room, so create it
        ///Creating the char room.
        emit(state.copyWith(isLoading: false, chatId: chatId, myId: myUId));
      }
    });
    on<_SendMsg>((event, emit) {
      CustomPushApi().sendPushMessage(token: event.token, body: event.message);
      FirebaseFirestore.instance
          .collection(Collections.CHAT_DATA)
          .doc(state.chatId)
          .collection("chats")
          .add({
        'msg': event.message,
        'time': DateTime.now().millisecondsSinceEpoch.toString(),
        'isSentBy': myUId,
      });
      CustomPushApi.sendCustomPush(
          token: event.token,
          body: event.message,
          title: 'New Message recieved');
    });
    on<_UploadToStorage>((event, emit) async {
      var isUploaed = await firestore.firebaseStroageUpload(event.filePath);
    });
  }
}
