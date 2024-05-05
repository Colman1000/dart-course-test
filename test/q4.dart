import 'package:test/test.dart';
import 'package:dart_course_test/q4/index.dart';


void main() {
  group('Factorial Function Tests', () {

    test('Factorial of 5', () {
      expect(factorial(5), equals(120));
    });

    test('Factorial of 6', () {
      expect(factorial(6), equals(720));
    });

    test('Factorial of 0', () {
      expect(factorial(0), equals(1));
    });

    test('Factorial of 1', () {
      expect(factorial(1), equals(1));
    });

    test('Factorial of 10', () {
      expect(factorial(10), equals(3628800));
    });
  });
}
