// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:tourist_app/application/auth/bloc/auth_bloc.dart' as _i3;
import 'package:tourist_app/application/chat/bloc/chat_bloc.dart' as _i8;
import 'package:tourist_app/application/trip/bloc/trip_bloc.dart' as _i7;
import 'package:tourist_app/core/auth/google_auth/auth.dart' as _i4;
import 'package:tourist_app/core/auth/google_auth/google_auth.dart' as _i6;
import 'package:tourist_app/infrastructure/firestore/firestore.dart' as _i5;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(gh<_i4.Auth>()));
  gh.factory<_i5.FirestoreFunctions>(() => _i5.FirestoreFunctions());
  gh.lazySingleton<_i6.IGoogleSigning>(() => _i4.Auth());
  gh.factory<_i7.TripBloc>(() => _i7.TripBloc(gh<_i5.FirestoreFunctions>()));
  gh.factory<_i8.ChatBloc>(() => _i8.ChatBloc(gh<_i5.FirestoreFunctions>()));
  return getIt;
}
