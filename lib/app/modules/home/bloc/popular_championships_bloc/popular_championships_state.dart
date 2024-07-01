part of 'popular_championships_bloc.dart';

class PopularChampionshipsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class PopularChampionshipsInitialState extends PopularChampionshipsState {}

class PopularChampionshipsLoadingState extends PopularChampionshipsState {}

class PopularChampionshipsSuccessState extends PopularChampionshipsState {
  final List<PopularChampionshipModel> popularChampionships;

  PopularChampionshipsSuccessState({required this.popularChampionships});
}

class PopularChampionshipsErrorState extends PopularChampionshipsState {}
