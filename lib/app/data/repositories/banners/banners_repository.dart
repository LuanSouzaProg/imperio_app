import '../../../shared/utils/state.dart';

abstract class BannersRepository {
  Future<ViewState> getBanners();
}
