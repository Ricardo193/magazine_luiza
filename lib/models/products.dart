class Products {
  final String photo;
  final String name;
  final String description;
  final String value;
  final String times;
  bool isFavorite;

  Products({
    required this.description,
    required this.name,
    required this.photo,
    required this.times,
    required this.value,
    this.isFavorite = false,
  });
}
