// Lớp dữ liệu cho sản phẩm
class Product {
  final String name;
  final double price;
  final double? originalPrice; // Giá gốc (nếu có giảm giá)
  final String imageUrl;

  Product({
    required this.name,
    required this.price,
    this.originalPrice,
    required this.imageUrl,
  });
}
