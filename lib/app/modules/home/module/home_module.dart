import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../bloc/sports_listing_bloc/sports_listing_bloc.dart';
import '../pages/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) {
        SportsListingBloc sportsListingBloc = Modular.get();

        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: sportsListingBloc),
          ],
          child: const HomePage(),
        );
      },
    );
  }
}
