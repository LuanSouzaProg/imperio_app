import '../../../shared/utils/state.dart';

abstract class PopularChampionshipsService {
  Future<ViewState> getPopularChampionships();
}
