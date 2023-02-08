import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tourist_app/core/auth/google_auth/auth.dart';
import 'package:tourist_app/domain/trip_create/trip_create.dart';


import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(asExtension: false)
Future<void> configureDependencies() async {
  await init(getIt, environment: Environment.prod);
  getIt.registerSingleton<Auth>(Auth());
  getIt.registerSingleton<TripCreateModel>(const TripCreateModel(
      expense: '', fromDate: '', name: '', toDate: '', users: []));
}
