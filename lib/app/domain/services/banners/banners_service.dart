import '../../../shared/utils/state.dart';

abstract class BannersService {
  Future<ViewState> getBanners();
}
