import 'package:smart_farming/core/models/product_category.dart';

class Product {
  final int id;
  final String name;
  final int price;
  final String description;
  final String unit;
  final String image;
  final String nutrition;
  final String? additionalInfo;
  final String? rating;
  final ProductCategory category;

  Product(
    this.id,
    this.name,
    this.price,
    this.description,
    this.unit,
    this.image,
    this.nutrition,
    this.additionalInfo,
    this.rating,
    this.category,
  );
}
