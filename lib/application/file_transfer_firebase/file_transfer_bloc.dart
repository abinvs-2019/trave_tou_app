import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tourist_app/core/file_picker/media_picker.dart';
import 'package:tourist_app/infrastructure/firestore/firestore.dart';

part 'file_transfer_event.dart';
part 'file_transfer_state.dart';
part 'file_transfer_bloc.freezed.dart';


@injectable
class FileTransferBloc extends Bloc<FileTransferEvent, FileTransferState> {
  FileTransferBloc() : super(FileTransferState.initial()) {
    on<_Upload>((event, emit) async {
      Either<File, String> picker = await MediaPicker().pickFiles();
      emit(state.copyWith(isTransferring: true));
      Either<String, String>? upload;
      picker.fold((l) async {
        upload = await FirbaseFunctions().firebaseStroageUpload(l);
      }, (r) {
        emit(state.copyWith(isError: true));
      });
      upload!.fold((l) {
        emit(state.copyWith(isCompleted: true));
      }, (r) {
        Fluttertoast.showToast(
            msg: 'Please contact Admin, Something went wrong');
        emit(state.copyWith(isError: true));
      });
    });

    on<_Download>((event, emit) {});
  }
}
