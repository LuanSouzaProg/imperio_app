import 'package:flutter_modular/flutter_modular.dart';

import 'modules/auth/module/auth_module.dart';
import 'modules/home/module/home_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: AuthModule());
    r.module('/home_module', module: HomeModule());
  }
}
