import 'dart:convert';

import '../../../shared/utils/mock/popular_championships_mock.dart';
import '../../../domain/models/popular_championship_model.dart';
import 'popular_championships_repository.dart';
import '../../../shared/utils/state.dart';

class PopularChampionshipsRepositoryImpl
    implements PopularChampionshipsRepository {
  @override
  Future<ViewState> getPopularChampionships() async {
    try {
      List<dynamic> championshipsJson = jsonDecode(popularChampionshipsModel);

      List<PopularChampionshipModel> championships = championshipsJson
          .map((json) => PopularChampionshipModel.fromJson(json))
          .toList();

      return Success(data: championships);
    } catch (e) {
      return Failure(message: e.toString());
    }
  }
}
