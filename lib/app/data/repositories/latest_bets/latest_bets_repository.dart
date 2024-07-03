import '../../../shared/utils/state.dart';

abstract class LatestBetsRepository {
  Future<ViewState> getLatestBets();
}
