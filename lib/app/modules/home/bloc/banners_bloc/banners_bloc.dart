import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../domain/services/banners/banners_service.dart';
import '../../../../domain/models/banner_model.dart';
import '../../../../shared/utils/state.dart';

part 'banners_event.dart';
part 'banners_state.dart';

class BannersBloc extends Bloc<BannersEvent, BannersState> {
  BannersService bannersService = Modular.get();

  BannersBloc() : super(BannersInitialState()) {
    on<GetBannersEvent>(
      (event, emit) async {
        emit(BannersLoadingState());
        await handleGetBanners(event, emit);
      },
    );
  }

  Future handleGetBanners(event, emit) async {
    var response = await bannersService.getBanners();

    if (response is Success) {
      emit(BannersSuccessState(banners: response.data));
    } else if (response is Failure) {
      emit(BannersErrorState());
    }
  }
}
