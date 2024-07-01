import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/shared/utils/state.dart';

import '../../../data/repositories/sports_listing/sports_listing_repository.dart';
import 'sports_listing_service.dart';

class SportsListingServiceImpl implements SportsListingService {
  SportsListingRepository sportsListingRepository = Modular.get();

  @override
  Future<ViewState> getSports() => sportsListingRepository.getSports();
}
