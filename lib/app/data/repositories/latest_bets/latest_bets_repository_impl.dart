import 'dart:convert';

import '../../../domain/models/latest_bet_model.dart';
import '../../../shared/utils/mock/latest_bets_mock.dart';
import '../../../shared/utils/state.dart';
import 'latest_bets_repository.dart';

class LatestBetsRepositoryImpl implements LatestBetsRepository {
  @override
  Future<ViewState> getLatestBets() async {
    try {
      List<dynamic> latestBetsJson = jsonDecode(latestBetsMock);

      List<LatestBetModel> latestbets =
          latestBetsJson.map((json) => LatestBetModel.fromJson(json)).toList();

      return Success(data: latestbets);
    } catch (e) {
      return Failure(message: e.toString());
    }
  }
}
