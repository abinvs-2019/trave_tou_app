part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  factory ChatState(
      {String? chatId,
      String? myId,
      required bool isLoading,
      required bool isError}) = _Initial;
  factory ChatState.initial() {
    return ChatState(isLoading: true, isError: false);
  }
}
