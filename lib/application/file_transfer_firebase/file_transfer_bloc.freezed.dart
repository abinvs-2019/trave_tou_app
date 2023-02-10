// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_transfer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileTransferEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() upload,
    required TResult Function(File file) download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? upload,
    TResult? Function(File file)? download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? upload,
    TResult Function(File file)? download,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Upload value) upload,
    required TResult Function(_Download value) download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Download value)? download,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Upload value)? upload,
    TResult Function(_Download value)? download,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileTransferEventCopyWith<$Res> {
  factory $FileTransferEventCopyWith(
          FileTransferEvent value, $Res Function(FileTransferEvent) then) =
      _$FileTransferEventCopyWithImpl<$Res, FileTransferEvent>;
}

/// @nodoc
class _$FileTransferEventCopyWithImpl<$Res, $Val extends FileTransferEvent>
    implements $FileTransferEventCopyWith<$Res> {
  _$FileTransferEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UploadCopyWith<$Res> {
  factory _$$_UploadCopyWith(_$_Upload value, $Res Function(_$_Upload) then) =
      __$$_UploadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UploadCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res, _$_Upload>
    implements _$$_UploadCopyWith<$Res> {
  __$$_UploadCopyWithImpl(_$_Upload _value, $Res Function(_$_Upload) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Upload implements _Upload {
  const _$_Upload();

  @override
  String toString() {
    return 'FileTransferEvent.upload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Upload);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() upload,
    required TResult Function(File file) download,
  }) {
    return upload();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? upload,
    TResult? Function(File file)? download,
  }) {
    return upload?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? upload,
    TResult Function(File file)? download,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Upload value) upload,
    required TResult Function(_Download value) download,
  }) {
    return upload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Download value)? download,
  }) {
    return upload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Upload value)? upload,
    TResult Function(_Download value)? download,
    required TResult orElse(),
  }) {
    if (upload != null) {
      return upload(this);
    }
    return orElse();
  }
}

abstract class _Upload implements FileTransferEvent {
  const factory _Upload() = _$_Upload;
}

/// @nodoc
abstract class _$$_DownloadCopyWith<$Res> {
  factory _$$_DownloadCopyWith(
          _$_Download value, $Res Function(_$_Download) then) =
      __$$_DownloadCopyWithImpl<$Res>;
  @useResult
  $Res call({File file});
}

/// @nodoc
class __$$_DownloadCopyWithImpl<$Res>
    extends _$FileTransferEventCopyWithImpl<$Res, _$_Download>
    implements _$$_DownloadCopyWith<$Res> {
  __$$_DownloadCopyWithImpl(
      _$_Download _value, $Res Function(_$_Download) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$_Download(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_Download implements _Download {
  const _$_Download({required this.file});

  @override
  final File file;

  @override
  String toString() {
    return 'FileTransferEvent.download(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Download &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadCopyWith<_$_Download> get copyWith =>
      __$$_DownloadCopyWithImpl<_$_Download>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() upload,
    required TResult Function(File file) download,
  }) {
    return download(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? upload,
    TResult? Function(File file)? download,
  }) {
    return download?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? upload,
    TResult Function(File file)? download,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Upload value) upload,
    required TResult Function(_Download value) download,
  }) {
    return download(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Upload value)? upload,
    TResult? Function(_Download value)? download,
  }) {
    return download?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Upload value)? upload,
    TResult Function(_Download value)? download,
    required TResult orElse(),
  }) {
    if (download != null) {
      return download(this);
    }
    return orElse();
  }
}

abstract class _Download implements FileTransferEvent {
  const factory _Download({required final File file}) = _$_Download;

  File get file;
  @JsonKey(ignore: true)
  _$$_DownloadCopyWith<_$_Download> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FileTransferState {
  bool get isTransferring => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileTransferStateCopyWith<FileTransferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileTransferStateCopyWith<$Res> {
  factory $FileTransferStateCopyWith(
          FileTransferState value, $Res Function(FileTransferState) then) =
      _$FileTransferStateCopyWithImpl<$Res, FileTransferState>;
  @useResult
  $Res call({bool isTransferring, bool isError, bool isCompleted});
}

/// @nodoc
class _$FileTransferStateCopyWithImpl<$Res, $Val extends FileTransferState>
    implements $FileTransferStateCopyWith<$Res> {
  _$FileTransferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTransferring = null,
    Object? isError = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      isTransferring: null == isTransferring
          ? _value.isTransferring
          : isTransferring // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadStateCopyWith<$Res>
    implements $FileTransferStateCopyWith<$Res> {
  factory _$$_UploadStateCopyWith(
          _$_UploadState value, $Res Function(_$_UploadState) then) =
      __$$_UploadStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isTransferring, bool isError, bool isCompleted});
}

/// @nodoc
class __$$_UploadStateCopyWithImpl<$Res>
    extends _$FileTransferStateCopyWithImpl<$Res, _$_UploadState>
    implements _$$_UploadStateCopyWith<$Res> {
  __$$_UploadStateCopyWithImpl(
      _$_UploadState _value, $Res Function(_$_UploadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isTransferring = null,
    Object? isError = null,
    Object? isCompleted = null,
  }) {
    return _then(_$_UploadState(
      isTransferring: null == isTransferring
          ? _value.isTransferring
          : isTransferring // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UploadState implements _UploadState {
  _$_UploadState(
      {required this.isTransferring,
      required this.isError,
      required this.isCompleted});

  @override
  final bool isTransferring;
  @override
  final bool isError;
  @override
  final bool isCompleted;

  @override
  String toString() {
    return 'FileTransferState(isTransferring: $isTransferring, isError: $isError, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadState &&
            (identical(other.isTransferring, isTransferring) ||
                other.isTransferring == isTransferring) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isTransferring, isError, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadStateCopyWith<_$_UploadState> get copyWith =>
      __$$_UploadStateCopyWithImpl<_$_UploadState>(this, _$identity);
}

abstract class _UploadState implements FileTransferState {
  factory _UploadState(
      {required final bool isTransferring,
      required final bool isError,
      required final bool isCompleted}) = _$_UploadState;

  @override
  bool get isTransferring;
  @override
  bool get isError;
  @override
  bool get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$_UploadStateCopyWith<_$_UploadState> get copyWith =>
      throw _privateConstructorUsedError;
}
