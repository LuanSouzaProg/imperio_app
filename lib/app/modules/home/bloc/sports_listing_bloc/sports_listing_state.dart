part of 'sports_listing_bloc.dart';

class SportsListingState extends Equatable {
  @override
  List<Object?> get props => [];
}

class SportsListingInitialState extends SportsListingState {}

class SportsListingLoadingState extends SportsListingState {}

class SportsListingSuccessState extends SportsListingState {
  final List<SportTypeModel> sports;

  SportsListingSuccessState({required this.sports});
}

class SportsListingErrorState extends SportsListingState {}
