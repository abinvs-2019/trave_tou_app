part of 'upload_bloc.dart';

@freezed
class UploadEvent with _$UploadEvent {
  const factory UploadEvent.upload({required File file}) = _Upload;
  const factory UploadEvent.download({required File file}) = _Download;
}
