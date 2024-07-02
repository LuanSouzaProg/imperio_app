import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/services/tips/tips_service.dart';
import '../../../../domain/models/tips_model.dart';
import '../../../../shared/utils/state.dart';

part 'tips_event.dart';
part 'tips_state.dart';

class TipsBloc extends Bloc<TipsEvent, TipsState> {
  TipsService tipsService = Modular.get();

  TipsBloc() : super(TipsInitialState()) {
    on<GetTipsEvent>(
      (event, emit) async {
        emit(TipsLoadingState());
        await handleGetTips(event, emit);
      },
    );
  }

  Future handleGetTips(event, emit) async {
    var response = await tipsService.getTips();

    if (response is Success) {
      emit(TipsSuccessState(tips: response.data));
    } else if (response is Failure) {
      emit(TipsErrorState());
    }
  }
}
