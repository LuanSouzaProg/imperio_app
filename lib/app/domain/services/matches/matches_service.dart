import '../../../shared/utils/state.dart';

abstract class MatchesService {
  Future<ViewState> getMatches();
}
