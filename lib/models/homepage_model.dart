class Product {
  final String name;
  final double price;
  final double? originalPrice;
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
  });
}
