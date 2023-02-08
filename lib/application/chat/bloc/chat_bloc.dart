import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourist_app/config/constants.dart';
import 'package:tourist_app/config/firestore_collection.dart';
import 'package:tourist_app/core/firebase_messaging/custom_send_push.dart';
import 'package:tourist_app/infrastructure/firestore/firestore.dart';

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
      print('my uuid id: $myUId');
      chatId = '${myUId}${event.userUid}';
      emit(state.copyWith(chatId: chatId, isLoading: false, myId: myUId));
    });
    on<_SendMsg>((event, emit) {
      FirebaseFirestore.instance
          .collection(Collections.CHAT_DATA)
          .doc(myUId)
          .collection(chatId!)
          .add({
        'msg': event.message,
        'time': DateTime.now().millisecondsSinceEpoch.toString(),
        'isSentBy': myUId
      });
      // CustomPushApi.sendCustomPush(token: event.token, body: event.message, title: 'New Message recieved');
    });
    on<_UploadToStorage>((event, emit) async {
      var isUploaed = await firestore.firebaseStroageUpload(event.filePath);
    });
  }
}
