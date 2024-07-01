import 'package:flutter_modular/flutter_modular.dart';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';

import '../../../../domain/services/popular_championships/popular_championships_service.dart';
import '../../../../domain/models/popular_championship_model.dart';
import '../../../../shared/utils/state.dart';

part 'popular_championships_event.dart';
part 'popular_championships_state.dart';

class PopularChampionshipsBloc
    extends Bloc<PopularChampionshipsEvent, PopularChampionshipsState> {
  PopularChampionshipsService popularChampionshipsService = Modular.get();

  PopularChampionshipsBloc() : super(PopularChampionshipsInitialState()) {
    on<GetPopularChampionshipsEvent>((event, emit) async {
      emit(PopularChampionshipsLoadingState());
      await handleGetPopularChampionships(event, emit);
    });
  }

  Future handleGetPopularChampionships(event, emit) async {
    var response = await popularChampionshipsService.getPopularChampionships();

    if (response is Success) {
      emit(PopularChampionshipsSuccessState(
          popularChampionships: response.data));
    } else if (response is Failure) {
      emit(PopularChampionshipsErrorState());
    }
  }
}
