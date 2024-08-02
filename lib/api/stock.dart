class Stock {
  final int id;
  final int product;
  final int quantity;
  final double totalPrice;
  final double salePricePerItem;

  const Stock({
    required this.id,
    required this.product,
    required this.quantity,
    required this.totalPrice,
    required this.salePricePerItem,
  });

  factory Stock.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'product': int product,
        'quantity': int quantity,
        'total_price': double totalPrice,
        'sale_price_per_item': double salePricePerItem
      } =>
        Stock(
          id: id,
          product: product,
          quantity: quantity,
          totalPrice: totalPrice,
          salePricePerItem: salePricePerItem,
        ),
      _ => throw const FormatException('Failed to load Stock.'),
    };
  }
}
