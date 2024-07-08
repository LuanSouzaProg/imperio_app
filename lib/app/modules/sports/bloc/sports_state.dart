part of 'sports_bloc.dart';

class SportsState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SportsInitialState extends SportsState {}

class SportsLoadingState extends SportsState {}

class SportsSuccessState extends SportsState {
  final List<SportTypeModel> sports;

  SportsSuccessState({required this.sports});
}

class SportsErrorState extends SportsState {}
