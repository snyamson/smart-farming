class CartModel {
  final String? id;
  final String? name;
  final int? price;
  final String? unit;
  final String? image;
  final int? quantity;
  final String? time;
  final bool? isExist;

  CartModel(
    this.id,
    this.name,
    this.price,
    this.unit,
    this.image,
    this.quantity,
    this.time,
    this.isExist,
  );
}
