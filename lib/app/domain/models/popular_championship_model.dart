class PopularChampionshipModel {
  final int id;
  final String image;

  PopularChampionshipModel({
    required this.id,
    required this.image,
  });

  factory PopularChampionshipModel.fromJson(Map<String, dynamic> json) {
    return PopularChampionshipModel(
      id: json['id'],
      image: json['image'],
    );
  }
}
