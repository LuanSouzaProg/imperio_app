import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/sports_bloc.dart';
import '../pages/sports_page.dart';

class SportsModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) {
        SportsBloc sportsBloc = Modular.get();

        return MultiBlocProvider(
          providers: [
            BlocProvider.value(value: sportsBloc),
          ],
          child: const SportsPage(),
        );
      },
    );
  }
}
