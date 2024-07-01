part of 'banners_bloc.dart';

class BannersState extends Equatable {
  @override
  List<Object?> get props => [];
}

class BannersInitialState extends BannersState {}

class BannersLoadingState extends BannersState {}

class BannersSuccessState extends BannersState {
  final List<BannerModel> banners;

  BannersSuccessState({required this.banners});
}

class BannersErrorState extends BannersState {}
