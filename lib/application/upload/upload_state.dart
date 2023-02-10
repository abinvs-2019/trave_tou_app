part of 'upload_bloc.dart';

@freezed
class UploadState with _$UploadState {
  factory UploadState(
      {required bool isTransferring,
      required bool isError,
      required bool isCompleted}) = _UploadState;
  factory UploadState.initial() {
    return UploadState(
        isTransferring: false, isError: false, isCompleted: false);
  }
}
