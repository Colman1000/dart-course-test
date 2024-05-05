import 'package:test/test.dart';
import 'package:dart_course_test/q6/index.dart';



void main() {
  group('Filter Even Numbers Function Tests', () {
    test('List with even numbers', () {
      expect(filterEven([1, 2, 3, 4, 5]), equals([2, 4]));
      expect(filterEven([10, 20, 30, 40, 50]), equals([10, 20, 30, 40, 50]));
    });

    test('List with no even numbers', () {
      expect(filterEven([1, 3, 5, 7]), equals([]));
    });

    test('List with all even numbers', () {
      expect(filterEven([2, 4, 6, 8]), equals([2, 4, 6, 8]));
    });

    test('Empty list', () {
      expect(filterEven([]), equals([]));
    });

    test('List with negative numbers', () {
      expect(filterEven([-2, -4, -6, -8]), equals([-2, -4, -6, -8]));
      expect(filterEven([-1, -3, -5, -7]), equals([]));
    });
  });
}
