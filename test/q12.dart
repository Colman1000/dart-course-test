import 'package:test/test.dart';
import 'package:dart_course_test/q12/index.dart';


void main() {
  group('Rectangle Class Tests', () {
    test('Calculate Area and Perimeter for square', () {
      var square = Rectangle(5, 5);
      expect(square.calculateArea(), equals(25.0));
      expect(square.calculatePerimeter(), equals(20.0));
    });

    test('Calculate Area and Perimeter for rectangle with different length and width', () {
      var rectangle = Rectangle(6, 4);
      expect(rectangle.calculateArea(), equals(24.0));
      expect(rectangle.calculatePerimeter(), equals(20.0));
    });

    test('Calculate Area and Perimeter for rectangle with decimal values', () {
      var rectangle = Rectangle(3.5, 2.5);
      expect(rectangle.calculateArea(), equals(8.75));
      expect(rectangle.calculatePerimeter(), equals(12.0));
    });

    test('Calculate Area and Perimeter for very large rectangle', () {
      var rectangle = Rectangle(10000, 5000);
      expect(rectangle.calculateArea(), equals(50000000.0));
      expect(rectangle.calculatePerimeter(), equals(30000.0));
    });

    test('Calculate Area and Perimeter for very small rectangle', () {
      var rectangle = Rectangle(0.001, 0.002);
      expect(rectangle.calculateArea(), equals(0.000002));
      expect(rectangle.calculatePerimeter(), equals(0.006));
    });

    test('Calculate Area and Perimeter for rectangle with negative length and width', () {
      var rectangle = Rectangle(-4, -6);
      expect(rectangle.calculateArea(), equals(24.0));
      expect(rectangle.calculatePerimeter(), equals(-20.0)); // Perimeter can't be negative, but testing anyway
    });
  });
}