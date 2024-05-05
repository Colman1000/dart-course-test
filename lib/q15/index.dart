class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

class OrderItem {
  Product product;
  int quantity;

  OrderItem(this.product, this.quantity);
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
