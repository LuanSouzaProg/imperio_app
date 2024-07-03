import 'package:flutter_modular/flutter_modular.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

import '../../../../domain/services/latest_bets/latest_bets_service.dart';
import '../../../../domain/models/latest_bet_model.dart';
import '../../../../shared/utils/state.dart';

part 'latest_bets_event.dart';
part 'latest_bets_state.dart';

class LatestBetsBloc extends Bloc<LatestBetsEvent, LatestBetsState> {
  LatestBetsService latestBetsService = Modular.get();

  LatestBetsBloc() : super(LatestBetsInitialState()) {
    on<GetLatestBetsEvent>(
      (event, emit) async {
        emit(LatestBetsLoadingState());
        await handleGetLatestBets(event, emit);
      },
    );
  }

  Future handleGetLatestBets(event, emit) async {
    var response = await latestBetsService.getLatestBets();

    if (response is Success) {
      emit(LatestBetsSuccessState(latestBets: response.data));
    } else if (response is Failure) {
      emit(LatestBetsErrorState());
    }
  }
}
