import 'package:flutter_modular/flutter_modular.dart';

import '../pages/matche_page.dart';

class MatcheModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const MatchePage(),
    );
  }
}
