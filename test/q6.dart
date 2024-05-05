import 'package:test/test.dart';
import 'package:dart_course_test/q6/index.dart';

void main() {
  group('Filter Even Numbers Function Tests', () {
    test('Filter list [1, 2, 3, 4, 5]', () {
      expect(filterEven([1, 2, 3, 4, 5]), equals([2, 4]));
    });

    test('Filter list [10, 20, 30, 40, 50]', () {
      expect(filterEven([10, 20, 30, 40, 50]), equals([10, 20, 30, 40, 50]));
    });

    test('Filter list [1, 3, 5, 7]', () {
      expect(filterEven([1, 3, 5, 7]), equals([]));
    });

    test('Filter list [2, 4, 6, 8]', () {
      expect(filterEven([2, 4, 6, 8]), equals([2, 4, 6, 8]));
    });

    test('Filter Empty list', () {
      expect(filterEven([]), equals([]));
    });

    test('Filter list [-2, -4, -6, -8]', () {
      expect(filterEven([-2, -4, -6, -8]), equals([-2, -4, -6, -8]));
    });

    test('Filter list [-1, -3, -5, -7]', () {
      expect(filterEven([-1, -3, -5, -7]), equals([]));
    });
  });
}
