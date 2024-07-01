import 'package:flutter_modular/flutter_modular.dart';
import 'package:imperio/app/shared/utils/state.dart';

import '../../../data/repositories/banners/banners_repository.dart';
import 'banners_service.dart';

class BannersServiceImpl implements BannersService {
  BannersRepository bannersRepository = Modular.get();

  @override
  Future<ViewState> getBanners() => bannersRepository.getBanners();
}
