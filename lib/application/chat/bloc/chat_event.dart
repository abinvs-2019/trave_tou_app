part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getChatOnUsersId({required String userUid}) =
      _GetChatsId;
  const factory ChatEvent.createChatRoom({required String uid}) =
      _CreateChatRoom;
  const factory ChatEvent.sendMessage(
      {required String message,
      required String token,
      required FileType fileType}) = _SendMsg;
  const factory ChatEvent.uploadImage({required File filePath}) =
      _UploadToStorage;
}
