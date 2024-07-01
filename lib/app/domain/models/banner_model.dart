class BannerModel {
  final int id;
  final String name;
  final String subtitle;
  final String image;

  BannerModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.subtitle});

  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(
      id: json['id'],
      name: json['name'],
      subtitle: json['subtitle'],
      image: json['image'],
    );
  }
}
