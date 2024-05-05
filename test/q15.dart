import 'package:test/test.dart';
import 'package:dart_course_test/q15/index.dart';

void main() {
  group('OnlineStore Class Tests', () {
    test('Add product', () {
      var store = OnlineStore([], []);
      var product = Product("iPhone 12", 999.99, 10);
      store.addProduct(product);
      expect(store.products.length, equals(1));
      expect(store.products.first, equals(product));
    });

    test('Remove product', () {
      var product1 = Product("iPhone 12", 999.99, 10);
      var product2 = Product("Samsung Galaxy S21", 899.99, 15);
      var store = OnlineStore([product1, product2], []);
      store.removeProduct("iPhone 12");
      expect(store.products.length, equals(1));
      expect(store.products.first.name, equals("Samsung Galaxy S21"));
    });

    test('Update inventory', () {
      var product1 = Product("iPhone 12", 999.99, 10);
      var store = OnlineStore([product1], []);
      store.updateInventory("iPhone 12", 15);
      expect(store.products.first.quantity, equals(15));
    });

    test('Place order', () {
      var product1 = Product("iPhone 12", 999.99, 10);
      var product2 = Product("Samsung Galaxy S21", 899.99, 15);
      var store = OnlineStore([product1, product2], []);
      store.placeOrder(OrderItem(product1, 2));
      store.placeOrder(OrderItem(product2, 1));
      expect(store.orders.length, equals(2));
      expect(store.orders.first.product.name, equals("iPhone 12"));
      expect(store.orders.last.product.name, equals("Samsung Galaxy S21"));
    });

    test('Calculate total price', () {
      var product1 = Product("iPhone 12", 999.99, 10);
      var product2 = Product("Samsung Galaxy S21", 899.99, 15);
      var store = OnlineStore([], []);
      store.placeOrder(OrderItem(product1, 2));
      store.placeOrder(OrderItem(product2, 1));
      expect(store.calculateTotalPrice(), equals(2899.97));
    });
  });
}
