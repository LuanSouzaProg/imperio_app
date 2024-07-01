import 'package:flutter_modular/flutter_modular.dart';

import '../../../data/repositories/popular_championships/popular_championships_repository.dart';
import 'popular_championships_service.dart';
import '../../../shared/utils/state.dart';

class PopularChampionshipsServiceImpl implements PopularChampionshipsService {
  PopularChampionshipsRepository popularChampionshipsRepository = Modular.get();

  @override
  Future<ViewState> getPopularChampionships() =>
      popularChampionshipsRepository.getPopularChampionships();
}
