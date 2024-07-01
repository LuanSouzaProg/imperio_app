import 'package:flutter_modular/flutter_modular.dart';

import '../../../data/repositories/matches/matches_repository.dart';
import '../../../shared/utils/state.dart';
import 'matches_service.dart';

class MatchesServiceImpl implements MatchesService {
  MatchesRepository matchesRepository = Modular.get();

  @override
  Future<ViewState> getMatches() => matchesRepository.getMatches();
}
