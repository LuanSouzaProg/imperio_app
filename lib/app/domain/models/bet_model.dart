class BetModel {
  int id;
  String local;
  String image;
  String odd;

  BetModel({
    required this.id,
    required this.local,
    required this.image,
    required this.odd,
  });

  factory BetModel.fromJson(Map<String, dynamic> json) {
    return BetModel(
      id: json['id'],
      local: json['local'],
      image: json['image'],
      odd: json['odd'],
    );
  }
}
