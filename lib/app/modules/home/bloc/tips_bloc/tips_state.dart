part of 'tips_bloc.dart';

class TipsState extends Equatable {
  @override
  List<Object> get props => [];
}

class TipsInitialState extends TipsState {}

class TipsLoadingState extends TipsState {}

class TipsSuccessState extends TipsState {
  final List<TipsModel> tips;

  TipsSuccessState({required this.tips});
}

class TipsErrorState extends TipsState {}
