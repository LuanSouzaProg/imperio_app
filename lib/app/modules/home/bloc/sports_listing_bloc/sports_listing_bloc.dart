import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../domain/services/sports_listing/sports_listing_service.dart';
import '../../../../domain/models/sport_type_model.dart';
import '../../../../shared/utils/state.dart';

part 'sports_listing_event.dart';
part 'sports_listing_state.dart';

class SportsListingBloc extends Bloc<SportsListingEvent, SportsListingState> {
  SportsListingService sportsListingService = Modular.get();

  SportsListingBloc() : super(SportsListingInitialState()) {
    on<GetSportsEvent>(
      (event, emit) async {
        emit(SportsListingLoadingState());
        await handleGetSports(event, emit);
      },
    );
  }

  Future handleGetSports(event, emit) async {
    var response = await sportsListingService.getSports();

    if (response is Success) {
      emit(SportsListingSuccessState(sports: response.data));
    } else if (response is Failure) {
      emit(SportsListingErrorState());
    }
  }
}
