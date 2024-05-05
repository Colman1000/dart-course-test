class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  @override
  String toString() => "OrderItem < $name, $price, $quantity >";

  @override
  int get hashCode => Object.hash(
        name.hashCode,
        price.hashCode,
        quantity.hashCode,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is Product &&
            runtimeType == other.runtimeType &&
            hashCode == other.hashCode;
  }
}

class OrderItem {
  Product product;
  int quantity;

  OrderItem(this.product, this.quantity);

  @override
  String toString() => "OrderItem < ${product.toString()}, $quantity >";

  @override
  int get hashCode => Object.hash(
        product.hashCode,
        quantity.hashCode,
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is OrderItem &&
            runtimeType == other.runtimeType &&
            hashCode == other.hashCode;
  }
}

class OnlineStore {
  List<Product> products;
  List<OrderItem> orders;

  OnlineStore(this.products, this.orders);

  void addProduct(Product product) {
    // Implementation goes here
  }

  void removeProduct(String name) {
    // Implementation goes here
  }

  void updateInventory(String name, int quantity) {
    // Implementation goes here
  }

  void placeOrder(OrderItem orderItem) {
    // Implementation goes here
  }

  double calculateTotalPrice() {
    // Implementation goes here
    return 0;
  }
}
