// Model class for hoodie products
import 'dart:ui';

class HoodieProduct {
  final String name;
  final double price;
  final String imageUrl;
  final Color color;

  HoodieProduct({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.color,
  });
}