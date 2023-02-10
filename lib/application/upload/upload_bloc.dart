import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tourist_app/core/file_picker/media_picker.dart';
import 'package:tourist_app/infrastructure/firestore/firestore.dart';

part 'upload_event.dart';
part 'upload_state.dart';
part 'upload_bloc.freezed.dart';

class UploadBloc extends Bloc<UploadEvent, UploadState> {
  UploadBloc() : super(UploadState.initial()) {
    on<_Upload>((event, emit) async {
      Either<File, String> picker = await MediaPicker().pickFiles();
      emit(state.copyWith(isTransferring: true));
      Either<String, String>? upload;

      picker.fold((l) async {
        upload = await FirbaseFunctions().firebaseStroageUpload(event.file);
      }, (r) {
        emit(state.copyWith(isError: true));
      });
      upload!.fold((l) {
        emit(state.copyWith(isCompleted: true));
      }, (r) {});
    });
    on<_Download>((event, emit) {});
  }
}
