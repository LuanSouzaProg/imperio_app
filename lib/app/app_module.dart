import 'package:flutter_modular/flutter_modular.dart';

import 'data/repositories/popular_championships/popular_championships_repository_impl.dart';
import 'domain/services/popular_championships/popular_championships_service_impl.dart';
import 'data/repositories/popular_championships/popular_championships_repository.dart';
import 'modules/home/bloc/popular_championships_bloc/popular_championships_bloc.dart';
import 'domain/services/popular_championships/popular_championships_service.dart';
import 'data/repositories/sports_listing/sports_listing_repository_impl.dart';
import 'data/repositories/sports_listing/sports_listing_repository.dart';
import 'domain/services/sports_listing/sports_listing_service_impl.dart';
import 'data/repositories/latest_bets/latest_bets_repository_impl.dart';
import 'modules/home/bloc/sports_listing_bloc/sports_listing_bloc.dart';
import 'domain/services/sports_listing/sports_listing_service.dart';
import 'data/repositories/latest_bets/latest_bets_repository.dart';
import 'domain/services/latest_bets/latest_bets_service_impl.dart';
import 'modules/home/bloc/latest_bets_bloc/latest_bets_bloc.dart';
import 'data/repositories/matches/matches_repository_impl.dart';
import 'data/repositories/banners/banners_repository_impl.dart';
import 'domain/services/latest_bets/latest_bets_service.dart';
import 'data/repositories/matches/matches_repository.dart';
import 'domain/services/matches/matches_service_impl.dart';
import 'data/repositories/banners/banners_repository.dart';
import 'domain/services/banners/banners_service_impl.dart';
import 'data/repositories/tips/tips_repository_impl.dart';
import 'modules/home/bloc/matches_bloc/matches_bloc.dart';
import 'modules/home/bloc/banners_bloc/banners_bloc.dart';
import 'domain/services/matches/matches_service.dart';
import 'domain/services/banners/banners_service.dart';
import 'data/repositories/tips/tips_repository.dart';
import 'domain/services/tips/tips_service_impl.dart';
import 'modules/home/bloc/tips_bloc/tips_bloc.dart';
import 'domain/services/tips/tips_service.dart';
import 'modules/auth/module/auth_module.dart';
import 'modules/home/module/home_module.dart';
import 'modules/matche/module/matche_module.dart';
import 'modules/sports/bloc/sports_bloc.dart';
import 'modules/sports/module/sports_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.add<SportsListingRepository>(SportsListingRepositoryImpl.new);
    i.add<SportsListingService>(SportsListingServiceImpl.new);
    i.addSingleton(SportsListingBloc.new);
    i.add<BannersRepository>(BannersRepositoryImpl.new);
    i.add<BannersService>(BannersServiceImpl.new);
    i.addSingleton(BannersBloc.new);
    i.add<PopularChampionshipsRepository>(
        PopularChampionshipsRepositoryImpl.new);
    i.add<PopularChampionshipsService>(PopularChampionshipsServiceImpl.new);
    i.addSingleton(PopularChampionshipsBloc.new);
    i.add<MatchesRepository>(MatchesRepositoryImpl.new);
    i.add<MatchesService>(MatchesServiceImpl.new);
    i.addSingleton(MatchesBloc.new);
    i.add<TipsRepository>(TipsRepositoryImpl.new);
    i.add<TipsService>(TipsServiceImpl.new);
    i.addSingleton(TipsBloc.new);
    i.add<LatestBetsRepository>(LatestBetsRepositoryImpl.new);
    i.add<LatestBetsService>(LatestBetsServiceImpl.new);
    i.addSingleton(LatestBetsBloc.new);
    i.addSingleton(SportsBloc.new);
  }

  @override
  void routes(r) {
    r.module('/', module: AuthModule());
    r.module('/home_module', module: HomeModule());
    r.module('/sports_module', module: SportsModule());
    r.module('/matche_module', module: MatcheModule());
  }
}
