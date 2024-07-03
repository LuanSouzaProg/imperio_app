part of 'latest_bets_bloc.dart';

class LatestBetsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LatestBetsInitialState extends LatestBetsState {}

class LatestBetsLoadingState extends LatestBetsState {}

class LatestBetsSuccessState extends LatestBetsState {
  final List<LatestBetModel> latestBets;

  LatestBetsSuccessState({required this.latestBets});
}

class LatestBetsErrorState extends LatestBetsState {}
