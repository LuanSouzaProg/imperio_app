import 'sport_type_model.dart';

class TipsModel {
  final String title;
  final String description;
  final String image;
  final List<SportTypeModel> sports;

  TipsModel({
    required this.title,
    required this.description,
    required this.image,
    required this.sports,
  });

  // Método factory para criar uma instância de TipsModel a partir de um mapa JSON
  factory TipsModel.fromJson(Map<String, dynamic> json) {
    var sportsFromJson = json['sports'] as List;
    List<SportTypeModel> sportsList = sportsFromJson
        .map((sportJson) => SportTypeModel.fromJson(sportJson))
        .toList();

    return TipsModel(
      title: json['title'],
      description: json['description'],
      image: json['image'],
      sports: sportsList,
    );
  }
}
