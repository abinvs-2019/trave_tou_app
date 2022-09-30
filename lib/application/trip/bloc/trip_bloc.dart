import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tourist_app/config/firestore_collection.dart';
import 'package:tourist_app/domain/trip_create/trip_create.dart';
import 'package:tourist_app/infrastructure/firestore/firestore.dart';

part 'trip_event.dart';
part 'trip_state.dart';
part 'trip_bloc.freezed.dart';

@injectable
class TripBloc extends Bloc<TripEvent, TripState> {
  final FirestoreFunctions firestoreFunctions;

  TripBloc(this.firestoreFunctions) : super(TripState.initial()) {
    on<_CreateTrip>((event, emit) {
      emit(state.copyWith(isLoading: true));
      firestoreFunctions.addDataToCollection(Collections.TRIP_DATA, {
        'Trip_name': event.model!.name,
        'TripFromDate': event.model!.fromDate,
        'TripToDate': event.model!.toDate,
        'Expense': event.model!.expense
      });
      emit(state.copyWith(isLoading: false, isAdded: true));
    });
  }
}
