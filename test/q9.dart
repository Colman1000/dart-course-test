import 'package:test/test.dart';
import 'package:dart_course_test/q9/index.dart';


void main() {
  group('3 and 5 Friends Function Tests', () {
    test('List with numbers divisible by both 3 and 5', () {
      expect(sumDivisibleBy3And5([3, 5, 9, 10, 15, 30, 39]), equals(45));
      expect(sumDivisibleBy3And5([3, 4, 45]), equals(45));
    });

    test('List with no numbers divisible by both 3 and 5', () {
      expect(sumDivisibleBy3And5([1, 2, 4, 6]), equals(0));
    });

    test('List with negative numbers divisible by both 3 and 5', () {
      expect(sumDivisibleBy3And5([-15, -30, -45]), equals(-90));
      expect(sumDivisibleBy3And5([-9, -12, -15]), equals(-45));
    });

    test('List with only one number divisible by both 3 and 5', () {
      expect(sumDivisibleBy3And5([15]), equals(15));
    });

    test('Empty list', () {
      expect(sumDivisibleBy3And5([]), equals(0));
    });
  });
}