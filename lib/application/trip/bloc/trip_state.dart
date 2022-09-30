part of 'trip_bloc.dart';

@freezed
class TripState with _$TripState {
  factory TripState({
    required bool isLoading,
    bool? isAdded,
  }) = _TripState;
  factory TripState.initial() {
    return TripState(isLoading: false);
  }
}
