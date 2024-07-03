import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/popular_championships_bloc/popular_championships_bloc.dart';
import '../bloc/sports_listing_bloc/sports_listing_bloc.dart';
import '../bloc/latest_bets_bloc/latest_bets_bloc.dart';
import '../bloc/banners_bloc/banners_bloc.dart';
import '../bloc/matches_bloc/matches_bloc.dart';
import '../bloc/tips_bloc/tips_bloc.dart';
import '../pages/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) {
        PopularChampionshipsBloc popularChampionshipsBloc = Modular.get();
        SportsListingBloc sportsListingBloc = Modular.get();
        LatestBetsBloc latestBetsBloc = Modular.get();
        BannersBloc bannersBloc = Modular.get();
        MatchesBloc matchesBloc = Modular.get();
        TipsBloc tipsBloc = Modular.get();

        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: popularChampionshipsBloc),
            BlocProvider.value(value: sportsListingBloc),
            BlocProvider.value(value: latestBetsBloc),
            BlocProvider.value(value: bannersBloc),
            BlocProvider.value(value: matchesBloc),
            BlocProvider.value(value: tipsBloc),
          ],
          child: const HomePage(),
        );
      },
    );
  }
}
