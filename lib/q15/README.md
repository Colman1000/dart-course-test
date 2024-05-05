### Challenge Title: Book Library

#### Description:
Create a Dart class called OnlineStore to represent an online store system. The system should manage products, their inventory, and customer orders. Implement methods to `add a product` to the store, `remove a product` from the store, `update product inventory`, `place a customer order`, and `calculate the total price of an order`.

Example:

```dart
// Usage example
var product1 = Product("iPhone 12", 999.99, 10);
var product2 = Product("Samsung Galaxy S21", 899.99, 15);
var product3 = Product("Google Pixel 5", 799.99, 20);

var store = OnlineStore([product1, product2, product3], []);

store.addProduct(Product("MacBook Pro", 1999.99, 5));
store.removeProduct("Google Pixel 5");
store.updateInventory("Samsung Galaxy S21", 2);
store.placeOrder(OrderItem(product1, 2));
store.placeOrder(OrderItem(product2, 1));

var totalPrice = store.calculateTotalPrice(); // Total Price: 2899.97

```