import 'package:test/test.dart';
import 'package:dart_course_test/q9/index.dart';


void main() {
  group('3 and 5 Friends Function Tests', () {
    test('List [3, 5, 9, 10, 15, 30, 39]', () {
      expect(sumDivisibleBy3And5([3, 5, 9, 10, 15, 30, 39]), equals(45));
    });

    test('List [3, 4, 45]', () {
      expect(sumDivisibleBy3And5([3, 4, 45]), equals(45));
    });

    test('List [1, 2, 4, 6]', () {
      expect(sumDivisibleBy3And5([1, 2, 4, 6]), equals(0));
    });

    test('List [-15, -30, -45]', () {
      expect(sumDivisibleBy3And5([-15, -30, -45]), equals(-90));
    });

    test('List [-9, -12, -15]', () {
      expect(sumDivisibleBy3And5([-9, -12, -15]), equals(-15));
    });

    test('List [15]', () {
      expect(sumDivisibleBy3And5([15]), equals(15));
    });

    test('Empty list', () {
      expect(sumDivisibleBy3And5([]), equals(0));
    });
  });
}