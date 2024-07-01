import '../../../shared/utils/state.dart';

abstract class SportsListingService {
  Future<ViewState> getSports();
}
