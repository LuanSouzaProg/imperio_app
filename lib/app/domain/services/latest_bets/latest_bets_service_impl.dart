import 'package:flutter_modular/flutter_modular.dart';

import '../../../data/repositories/latest_bets/latest_bets_repository.dart';
import '../../../shared/utils/state.dart';
import 'latest_bets_service.dart';

class LatestBetsServiceImpl implements LatestBetsService {
  LatestBetsRepository latestBetsRepository = Modular.get();

  @override
  Future<ViewState> getLatestBets() => latestBetsRepository.getLatestBets();
}
