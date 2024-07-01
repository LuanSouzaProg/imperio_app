import '../../../shared/utils/state.dart';

abstract class SportsListingRepository {
  Future<ViewState> getSports();
}
