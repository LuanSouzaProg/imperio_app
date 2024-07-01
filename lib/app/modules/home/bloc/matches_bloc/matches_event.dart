part of 'matches_bloc.dart';

class MatchesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetMatchesEvent extends MatchesEvent {
  final String date;

  GetMatchesEvent({required this.date});
}
