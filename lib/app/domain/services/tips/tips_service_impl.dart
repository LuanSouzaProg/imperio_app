import 'package:flutter_modular/flutter_modular.dart';

import '../../../data/repositories/tips/tips_repository.dart';
import '../../../shared/utils/state.dart';
import 'tips_service.dart';

class TipsServiceImpl implements TipsService {
  TipsRepository tipsRepository = Modular.get();

  @override
  Future<ViewState> getTips() => tipsRepository.getTips();
}
