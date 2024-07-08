import 'package:flutter_modular/flutter_modular.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

import '../../../domain/services/sports_listing/sports_listing_service.dart';
import '../../../domain/models/sport_type_model.dart';
import '../../../shared/utils/state.dart';

part 'sports_event.dart';
part 'sports_state.dart';

class SportsBloc extends Bloc<SportsEvent, SportsState> {
  SportsListingService sportsListingService = Modular.get();

  SportsBloc() : super(SportsInitialState()) {
    on<GetSportsEvent>((event, emit) async {
      emit(SportsLoadingState());
      await handleGetSports(event, emit);
    });
  }

  Future handleGetSports(event, emit) async {
    var response = await sportsListingService.getSports();

    if (response is Success) {
      emit(SportsSuccessState(sports: response.data));
    } else if (response is Failure) {
      emit(SportsErrorState());
    }
  }
}
