// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/auth/bloc/auth_bloc.dart' as _i3;
import '../../infrastructure/firestore/firestore.dart' as _i6;
import '../auth/google_auth/auth.dart' as _i4;
import '../auth/google_auth/google_auth.dart' as _i7;
import '../firestore/I_firestore.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(get<_i4.Auth>()));
  gh.lazySingleton<_i5.Firestore>(() => _i6.FirestoreFunctions());
  gh.lazySingleton<_i7.IGoogleSigning>(() => _i4.Auth());
  return get;
}