import 'package:flutter_modular/flutter_modular.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

import '../../../../domain/services/matches/matches_service.dart';
import '../../../../domain/models/matche_model.dart';
import '../../../../shared/utils/state.dart';

part 'matches_event.dart';
part 'matches_state.dart';

class MatchesBloc extends Bloc<MatchesEvent, MatchesState> {
  MatchesService matchesService = Modular.get();

  MatchesBloc() : super(MatchesInitialState()) {
    on<GetMatchesEvent>(
      (event, emit) async {
        emit(MatchesLoadingState());
        await handleGetMatches(event, emit);
      },
    );
  }

  Future handleGetMatches(event, emit) async {
    var response = await matchesService.getMatches();

    if (response is Success) {
      emit(MatchesSuccessState(matches: response.data));
    } else if (response is Failure) {
      emit(MatchesErrorState());
    }
  }
}
