import 'bet_model.dart';

class MatcheModel {
  int id;
  String homePlayer;
  int homeScore;
  String homeLogo;
  String awayPlayer;
  int awayScore;
  String awayLogo;
  String currentTime;
  String date;
  BetModel betHome;
  BetModel betAway;
  BetModel betIntermediate;

  MatcheModel({
    required this.id,
    required this.homePlayer,
    required this.homeScore,
    required this.homeLogo,
    required this.awayPlayer,
    required this.awayScore,
    required this.awayLogo,
    required this.currentTime,
    required this.date,
    required this.betHome,
    required this.betAway,
    required this.betIntermediate,
  });

  // Método factory para criar uma instância de MatcheModel a partir de um mapa JSON
  factory MatcheModel.fromJson(Map<String, dynamic> json) {
    return MatcheModel(
      id: json['id'],
      homePlayer: json['homePlayer'],
      homeScore: json['homeScore'],
      homeLogo: json['homeLogo'],
      awayPlayer: json['awayPlayer'],
      awayScore: json['awayScore'],
      awayLogo: json['awayLogo'],
      date: json['date'],
      currentTime: json['currentTime'],
      betHome: BetModel.fromJson(json['betHome']),
      betAway: BetModel.fromJson(json['betAway']),
      betIntermediate: BetModel.fromJson(json['betIntermediate']),
    );
  }
}
