part of 'file_transfer_bloc.dart';

@freezed
class FileTransferEvent with _$FileTransferEvent {
  const factory FileTransferEvent.upload() = _Upload;
  const factory FileTransferEvent.download({required File file}) = _Download;
}
