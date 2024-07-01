import 'dart:convert';

import 'package:imperio/app/shared/utils/state.dart';

import '../../../domain/models/banner_model.dart';
import '../../../shared/utils/mock/banners_mock.dart';
import 'banners_repository.dart';

class BannersRepositoryImpl implements BannersRepository {
  @override
  Future<ViewState> getBanners() async {
    try {
      List<dynamic> bannersJson = jsonDecode(bannersMock);

      List<BannerModel> banners =
          bannersJson.map((json) => BannerModel.fromJson(json)).toList();

      return Success(data: banners);
    } catch (e) {
      return Failure();
    }
  }
}
