import 'dart:convert';

import '../../../domain/models/tips_model.dart';
import '../../../shared/utils/mock/tips_mock.dart';
import '../../../shared/utils/state.dart';
import 'tips_repository.dart';

class TipsRepositoryImpl implements TipsRepository {
  @override
  Future<ViewState> getTips() async {
    try {
      List<dynamic> tipsJson = jsonDecode(tipsMock);

      List<TipsModel> tips =
          tipsJson.map((json) => TipsModel.fromJson(json)).toList();

      return Success(data: tips);
    } catch (e) {
      return Failure();
    }
  }
}
