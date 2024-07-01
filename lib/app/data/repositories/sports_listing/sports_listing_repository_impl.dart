import 'dart:convert';

import 'package:imperio/app/shared/utils/state.dart';

import '../../../shared/utils/sports_listing_mock.dart';
import '../../../domain/models/sport_type_model.dart';
import 'sports_listing_repository.dart';

class SportsListingRepositoryImpl implements SportsListingRepository {
  @override
  Future<ViewState> getSports() async {
    try {
      List<dynamic> sportsJson = jsonDecode(sportListing);

      List<SportTypeModel> sports =
          sportsJson.map((json) => SportTypeModel.fromJson(json)).toList();

      return Success(data: sports);
    } catch (e) {
      return Failure(message: e.toString());
    }
  }
}
