import '../../../shared/utils/state.dart';

abstract class LatestBetsService {
  Future<ViewState> getLatestBets();
}
