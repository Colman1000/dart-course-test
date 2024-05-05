import 'package:test/test.dart';
import 'package:dart_course_test/q10/index.dart';



void main() {
  group('Above Average Function Tests', () {
    test('List [1, 2, 3, 4, 5]', () {
      expect(countGreaterThanAverage([1, 2, 3, 4, 5]), equals(2));
    });
    test('List [10, 20, 30]', () {
      expect(countGreaterThanAverage([10, 20, 30]), equals(1));
    });

    test('List [1, 1, 1, 1, 1]', () {
      expect(countGreaterThanAverage([1, 1, 1, 1, 1]), equals(0));
    });

    test('List [10, 10, 10]', () {
      expect(countGreaterThanAverage([10, 10, 10]), equals(0));
    });

    test('List [1, 2, 3]', () {
      expect(countGreaterThanAverage([1, 2, 3]), equals(1));
    });

    test('List [10, 20, 25]', () {
      expect(countGreaterThanAverage([10, 20, 25]), equals(2));
    });

    test('List [-1, -2, -3, -4, -5]', () {
      expect(countGreaterThanAverage([-1, -2, -3, -4, -5]), equals(2));
    });

    test('List [-10, -20, -30]', () {
      expect(countGreaterThanAverage([-10, -20, -30]), equals(1));
    });

    test('List [-1, -2, -3, 0, 1, 2, 3]', () {
      expect(countGreaterThanAverage([-1, -2, -3, 0, 1, 2, 3]), equals(3));
    });

    test('List [5]', () {
      expect(countGreaterThanAverage([5]), equals(0));
    });

    test('List [-5]', () {
      expect(countGreaterThanAverage([-5]), equals(0));
    });

    test('Empty list', () {
      expect(countGreaterThanAverage([]), equals(0));
    });
  });
}