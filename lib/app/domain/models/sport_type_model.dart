class SportTypeModel {
  final int id;
  final String name;
  final String image;

  SportTypeModel({required this.id, required this.name, required this.image});

  factory SportTypeModel.fromJson(Map<String, dynamic> json) {
    return SportTypeModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}
