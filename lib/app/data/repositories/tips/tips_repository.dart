import '../../../shared/utils/state.dart';

abstract class TipsRepository {
  Future<ViewState> getTips();
}
