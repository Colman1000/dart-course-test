import 'package:test/test.dart';
import 'package:dart_course_test/q10/index.dart';



void main() {
  group('Above Average Function Tests', () {
    test('List with numbers greater than average', () {
      expect(countGreaterThanAverage([1, 2, 3, 4, 5]), equals(2));
      expect(countGreaterThanAverage([10, 20, 30]), equals(3));
    });

    test('List with all numbers equal to average', () {
      expect(countGreaterThanAverage([1, 1, 1, 1, 1]), equals(0));
      expect(countGreaterThanAverage([10, 10, 10]), equals(0));
    });

    test('List with all numbers less than average', () {
      expect(countGreaterThanAverage([1, 2, 3]), equals(0));
      expect(countGreaterThanAverage([10, 20, 25]), equals(0));
    });

    test('List with negative numbers', () {
      expect(countGreaterThanAverage([-1, -2, -3, -4, -5]), equals(0));
      expect(countGreaterThanAverage([-10, -20, -30]), equals(0));
      expect(countGreaterThanAverage([-1, -2, -3, 0, 1, 2, 3]), equals(3));
    });

    test('List with one element', () {
      expect(countGreaterThanAverage([5]), equals(0));
      expect(countGreaterThanAverage([-5]), equals(0));
    });

    test('Empty list', () {
      expect(countGreaterThanAverage([]), equals(0));
    });
  });
}