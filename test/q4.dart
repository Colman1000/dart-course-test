import 'package:test/test.dart';
import 'package:dart_course_test/q4/index.dart';


void main() {
  group('Factorial Function Tests', () {
    test('Factorial of positive integer', () {
      expect(factorial(5), equals(120));
      expect(factorial(6), equals(720));
    });

    test('Factorial of zero', () {
      expect(factorial(0), equals(1));
    });

    test('Factorial of one', () {
      expect(factorial(1), equals(1));
    });

    test('Factorial of large numbers', () {
      expect(factorial(10), equals(3628800));
      expect(factorial(20), equals(2432902008176640000));
    });

    test('Factorial of negative number', () {
      expect(() => factorial(-5), throwsArgumentError);
    });
  });
}
