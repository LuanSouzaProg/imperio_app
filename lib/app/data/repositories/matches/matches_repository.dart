import '../../../shared/utils/state.dart';

abstract class MatchesRepository {
  Future<ViewState> getMatches();
}
