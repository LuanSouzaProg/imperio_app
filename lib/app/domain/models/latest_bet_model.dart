class LatestBetModel {
  final String nameUser;
  final String imageUser;
  final String description;
  final String time;
  final String opponents;
  final String betImage;
  final String betOdd;

  LatestBetModel({
    required this.nameUser,
    required this.imageUser,
    required this.description,
    required this.time,
    required this.betImage,
    required this.betOdd,
    required this.opponents,
  });

  factory LatestBetModel.fromJson(Map<String, dynamic> json) {
    return LatestBetModel(
      nameUser: json['nameUser'],
      imageUser: json['imageUser'],
      description: json['description'],
      time: json['time'],
      betImage: json['betImage'],
      betOdd: json['betOdd'],
      opponents: json['opponents'],
    );
  }
}
