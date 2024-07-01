part of 'matches_bloc.dart';

class MatchesState extends Equatable {
  @override
  List<Object?> get props => [];
}

class MatchesInitialState extends MatchesState {}

class MatchesLoadingState extends MatchesState {}

class MatchesSuccessState extends MatchesState {
  final List<MatcheModel> matches;

  MatchesSuccessState({required this.matches});
}

class MatchesErrorState extends MatchesState {}
