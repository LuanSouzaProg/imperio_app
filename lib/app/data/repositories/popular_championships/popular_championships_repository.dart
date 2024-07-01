import '../../../shared/utils/state.dart';

abstract class PopularChampionshipsRepository {
  Future<ViewState> getPopularChampionships();
}
