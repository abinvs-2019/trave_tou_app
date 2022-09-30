part of 'trip_bloc.dart';

@freezed
class TripEvent with _$TripEvent {
  const factory TripEvent.createTrip({TripCreateModel? model}) = _CreateTrip;
}
