part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.getChatOnUsersId({required String userUid}) =
      _GetChatsId;
  const factory ChatEvent.sendMessage({required String message}) = _SendMsg;
}
