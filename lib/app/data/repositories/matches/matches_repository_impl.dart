import 'dart:convert';

import '../../../domain/models/matche_model.dart';
import '../../../shared/utils/mock/matches_mock.dart';
import '../../../shared/utils/state.dart';
import 'matches_repository.dart';

class MatchesRepositoryImpl implements MatchesRepository {
  @override
  Future<ViewState> getMatches() async {
    try {
      List<dynamic> matchesJson = jsonDecode(matchesMock);

      List<MatcheModel> matches =
          matchesJson.map((json) => MatcheModel.fromJson(json)).toList();

      return Success(data: matches);
    } catch (e) {
      return Failure(message: e.toString());
    }
  }
}
