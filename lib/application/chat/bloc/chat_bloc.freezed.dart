// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) getChatOnUsersId,
    required TResult Function(String uid) createChatRoom,
    required TResult Function(String message, String token, FileType fileType)
        sendMessage,
    required TResult Function(File filePath) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? getChatOnUsersId,
    TResult? Function(String uid)? createChatRoom,
    TResult? Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult? Function(File filePath)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? getChatOnUsersId,
    TResult Function(String uid)? createChatRoom,
    TResult Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult Function(File filePath)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatsId value) getChatOnUsersId,
    required TResult Function(_CreateChatRoom value) createChatRoom,
    required TResult Function(_SendMsg value) sendMessage,
    required TResult Function(_UploadToStorage value) uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatsId value)? getChatOnUsersId,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
    TResult? Function(_SendMsg value)? sendMessage,
    TResult? Function(_UploadToStorage value)? uploadImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatsId value)? getChatOnUsersId,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    TResult Function(_SendMsg value)? sendMessage,
    TResult Function(_UploadToStorage value)? uploadImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetChatsIdCopyWith<$Res> {
  factory _$$_GetChatsIdCopyWith(
          _$_GetChatsId value, $Res Function(_$_GetChatsId) then) =
      __$$_GetChatsIdCopyWithImpl<$Res>;
  @useResult
  $Res call({String userUid});
}

/// @nodoc
class __$$_GetChatsIdCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_GetChatsId>
    implements _$$_GetChatsIdCopyWith<$Res> {
  __$$_GetChatsIdCopyWithImpl(
      _$_GetChatsId _value, $Res Function(_$_GetChatsId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUid = null,
  }) {
    return _then(_$_GetChatsId(
      userUid: null == userUid
          ? _value.userUid
          : userUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetChatsId implements _GetChatsId {
  const _$_GetChatsId({required this.userUid});

  @override
  final String userUid;

  @override
  String toString() {
    return 'ChatEvent.getChatOnUsersId(userUid: $userUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetChatsId &&
            (identical(other.userUid, userUid) || other.userUid == userUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetChatsIdCopyWith<_$_GetChatsId> get copyWith =>
      __$$_GetChatsIdCopyWithImpl<_$_GetChatsId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) getChatOnUsersId,
    required TResult Function(String uid) createChatRoom,
    required TResult Function(String message, String token, FileType fileType)
        sendMessage,
    required TResult Function(File filePath) uploadImage,
  }) {
    return getChatOnUsersId(userUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? getChatOnUsersId,
    TResult? Function(String uid)? createChatRoom,
    TResult? Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult? Function(File filePath)? uploadImage,
  }) {
    return getChatOnUsersId?.call(userUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? getChatOnUsersId,
    TResult Function(String uid)? createChatRoom,
    TResult Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult Function(File filePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (getChatOnUsersId != null) {
      return getChatOnUsersId(userUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatsId value) getChatOnUsersId,
    required TResult Function(_CreateChatRoom value) createChatRoom,
    required TResult Function(_SendMsg value) sendMessage,
    required TResult Function(_UploadToStorage value) uploadImage,
  }) {
    return getChatOnUsersId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatsId value)? getChatOnUsersId,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
    TResult? Function(_SendMsg value)? sendMessage,
    TResult? Function(_UploadToStorage value)? uploadImage,
  }) {
    return getChatOnUsersId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatsId value)? getChatOnUsersId,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    TResult Function(_SendMsg value)? sendMessage,
    TResult Function(_UploadToStorage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (getChatOnUsersId != null) {
      return getChatOnUsersId(this);
    }
    return orElse();
  }
}

abstract class _GetChatsId implements ChatEvent {
  const factory _GetChatsId({required final String userUid}) = _$_GetChatsId;

  String get userUid;
  @JsonKey(ignore: true)
  _$$_GetChatsIdCopyWith<_$_GetChatsId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateChatRoomCopyWith<$Res> {
  factory _$$_CreateChatRoomCopyWith(
          _$_CreateChatRoom value, $Res Function(_$_CreateChatRoom) then) =
      __$$_CreateChatRoomCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid});
}

/// @nodoc
class __$$_CreateChatRoomCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_CreateChatRoom>
    implements _$$_CreateChatRoomCopyWith<$Res> {
  __$$_CreateChatRoomCopyWithImpl(
      _$_CreateChatRoom _value, $Res Function(_$_CreateChatRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
  }) {
    return _then(_$_CreateChatRoom(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateChatRoom implements _CreateChatRoom {
  const _$_CreateChatRoom({required this.uid});

  @override
  final String uid;

  @override
  String toString() {
    return 'ChatEvent.createChatRoom(uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChatRoom &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateChatRoomCopyWith<_$_CreateChatRoom> get copyWith =>
      __$$_CreateChatRoomCopyWithImpl<_$_CreateChatRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) getChatOnUsersId,
    required TResult Function(String uid) createChatRoom,
    required TResult Function(String message, String token, FileType fileType)
        sendMessage,
    required TResult Function(File filePath) uploadImage,
  }) {
    return createChatRoom(uid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? getChatOnUsersId,
    TResult? Function(String uid)? createChatRoom,
    TResult? Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult? Function(File filePath)? uploadImage,
  }) {
    return createChatRoom?.call(uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? getChatOnUsersId,
    TResult Function(String uid)? createChatRoom,
    TResult Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult Function(File filePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatsId value) getChatOnUsersId,
    required TResult Function(_CreateChatRoom value) createChatRoom,
    required TResult Function(_SendMsg value) sendMessage,
    required TResult Function(_UploadToStorage value) uploadImage,
  }) {
    return createChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatsId value)? getChatOnUsersId,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
    TResult? Function(_SendMsg value)? sendMessage,
    TResult? Function(_UploadToStorage value)? uploadImage,
  }) {
    return createChatRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatsId value)? getChatOnUsersId,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    TResult Function(_SendMsg value)? sendMessage,
    TResult Function(_UploadToStorage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateChatRoom implements ChatEvent {
  const factory _CreateChatRoom({required final String uid}) =
      _$_CreateChatRoom;

  String get uid;
  @JsonKey(ignore: true)
  _$$_CreateChatRoomCopyWith<_$_CreateChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendMsgCopyWith<$Res> {
  factory _$$_SendMsgCopyWith(
          _$_SendMsg value, $Res Function(_$_SendMsg) then) =
      __$$_SendMsgCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, String token, FileType fileType});
}

/// @nodoc
class __$$_SendMsgCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_SendMsg>
    implements _$$_SendMsgCopyWith<$Res> {
  __$$_SendMsgCopyWithImpl(_$_SendMsg _value, $Res Function(_$_SendMsg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? token = null,
    Object? fileType = null,
  }) {
    return _then(_$_SendMsg(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as FileType,
    ));
  }
}

/// @nodoc

class _$_SendMsg implements _SendMsg {
  const _$_SendMsg(
      {required this.message, required this.token, required this.fileType});

  @override
  final String message;
  @override
  final String token;
  @override
  final FileType fileType;

  @override
  String toString() {
    return 'ChatEvent.sendMessage(message: $message, token: $token, fileType: $fileType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMsg &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, token, fileType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMsgCopyWith<_$_SendMsg> get copyWith =>
      __$$_SendMsgCopyWithImpl<_$_SendMsg>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) getChatOnUsersId,
    required TResult Function(String uid) createChatRoom,
    required TResult Function(String message, String token, FileType fileType)
        sendMessage,
    required TResult Function(File filePath) uploadImage,
  }) {
    return sendMessage(message, token, fileType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? getChatOnUsersId,
    TResult? Function(String uid)? createChatRoom,
    TResult? Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult? Function(File filePath)? uploadImage,
  }) {
    return sendMessage?.call(message, token, fileType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? getChatOnUsersId,
    TResult Function(String uid)? createChatRoom,
    TResult Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult Function(File filePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message, token, fileType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatsId value) getChatOnUsersId,
    required TResult Function(_CreateChatRoom value) createChatRoom,
    required TResult Function(_SendMsg value) sendMessage,
    required TResult Function(_UploadToStorage value) uploadImage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatsId value)? getChatOnUsersId,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
    TResult? Function(_SendMsg value)? sendMessage,
    TResult? Function(_UploadToStorage value)? uploadImage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatsId value)? getChatOnUsersId,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    TResult Function(_SendMsg value)? sendMessage,
    TResult Function(_UploadToStorage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMsg implements ChatEvent {
  const factory _SendMsg(
      {required final String message,
      required final String token,
      required final FileType fileType}) = _$_SendMsg;

  String get message;
  String get token;
  FileType get fileType;
  @JsonKey(ignore: true)
  _$$_SendMsgCopyWith<_$_SendMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadToStorageCopyWith<$Res> {
  factory _$$_UploadToStorageCopyWith(
          _$_UploadToStorage value, $Res Function(_$_UploadToStorage) then) =
      __$$_UploadToStorageCopyWithImpl<$Res>;
  @useResult
  $Res call({File filePath});
}

/// @nodoc
class __$$_UploadToStorageCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_UploadToStorage>
    implements _$$_UploadToStorageCopyWith<$Res> {
  __$$_UploadToStorageCopyWithImpl(
      _$_UploadToStorage _value, $Res Function(_$_UploadToStorage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filePath = null,
  }) {
    return _then(_$_UploadToStorage(
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UploadToStorage implements _UploadToStorage {
  const _$_UploadToStorage({required this.filePath});

  @override
  final File filePath;

  @override
  String toString() {
    return 'ChatEvent.uploadImage(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadToStorage &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadToStorageCopyWith<_$_UploadToStorage> get copyWith =>
      __$$_UploadToStorageCopyWithImpl<_$_UploadToStorage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userUid) getChatOnUsersId,
    required TResult Function(String uid) createChatRoom,
    required TResult Function(String message, String token, FileType fileType)
        sendMessage,
    required TResult Function(File filePath) uploadImage,
  }) {
    return uploadImage(filePath);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userUid)? getChatOnUsersId,
    TResult? Function(String uid)? createChatRoom,
    TResult? Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult? Function(File filePath)? uploadImage,
  }) {
    return uploadImage?.call(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userUid)? getChatOnUsersId,
    TResult Function(String uid)? createChatRoom,
    TResult Function(String message, String token, FileType fileType)?
        sendMessage,
    TResult Function(File filePath)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChatsId value) getChatOnUsersId,
    required TResult Function(_CreateChatRoom value) createChatRoom,
    required TResult Function(_SendMsg value) sendMessage,
    required TResult Function(_UploadToStorage value) uploadImage,
  }) {
    return uploadImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetChatsId value)? getChatOnUsersId,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
    TResult? Function(_SendMsg value)? sendMessage,
    TResult? Function(_UploadToStorage value)? uploadImage,
  }) {
    return uploadImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChatsId value)? getChatOnUsersId,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    TResult Function(_SendMsg value)? sendMessage,
    TResult Function(_UploadToStorage value)? uploadImage,
    required TResult orElse(),
  }) {
    if (uploadImage != null) {
      return uploadImage(this);
    }
    return orElse();
  }
}

abstract class _UploadToStorage implements ChatEvent {
  const factory _UploadToStorage({required final File filePath}) =
      _$_UploadToStorage;

  File get filePath;
  @JsonKey(ignore: true)
  _$$_UploadToStorageCopyWith<_$_UploadToStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
  String? get chatId => throw _privateConstructorUsedError;
  String? get myId => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call({String? chatId, String? myId, bool isLoading, bool isError});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? myId = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      myId: freezed == myId
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? chatId, String? myId, bool isLoading, bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = freezed,
    Object? myId = freezed,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_Initial(
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      myId: freezed == myId
          ? _value.myId
          : myId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial(
      {this.chatId, this.myId, required this.isLoading, required this.isError});

  @override
  final String? chatId;
  @override
  final String? myId;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'ChatState(chatId: $chatId, myId: $myId, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.myId, myId) || other.myId == myId) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, chatId, myId, isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ChatState {
  factory _Initial(
      {final String? chatId,
      final String? myId,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  String? get chatId;
  @override
  String? get myId;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
