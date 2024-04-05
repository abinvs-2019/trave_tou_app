part of 'file_transfer_bloc.dart';

@freezed
class FileTransferState with _$FileTransferState {
  factory FileTransferState(
      {required bool isTransferring,
      required bool isError,
      required bool isCompleted}) = _UploadState;
  factory FileTransferState.initial() {
    return FileTransferState(
        isTransferring: false, isError: false, isCompleted: false);
  }
}
