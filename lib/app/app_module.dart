import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/sports_listing/sports_listing_repository_impl.dart';
import 'data/repositories/sports_listing/sports_listing_repository.dart';
import 'domain/services/sports_listing/sports_listing_service_impl.dart';
import 'modules/home/bloc/sports_listing_bloc/sports_listing_bloc.dart';
import 'domain/services/sports_listing/sports_listing_service.dart';
import 'data/repositories/banners/banners_repository_impl.dart';
import 'data/repositories/banners/banners_repository.dart';
import 'domain/services/banners/banners_service_impl.dart';
import 'modules/home/bloc/banners_bloc/banners_bloc.dart';
import 'domain/services/banners/banners_service.dart';
import 'modules/auth/module/auth_module.dart';
import 'modules/home/module/home_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add<SportsListingRepository>(SportsListingRepositoryImpl.new);
    i.add<SportsListingService>(SportsListingServiceImpl.new);
    i.addSingleton(SportsListingBloc.new);
    i.add<BannersRepository>(BannersRepositoryImpl.new);
    i.add<BannersService>(BannersServiceImpl.new);
    i.addSingleton(BannersBloc.new);
  }

  @override
  void routes(r) {
    r.module('/', module: AuthModule());
    r.module('/home_module', module: HomeModule());
  }
}
