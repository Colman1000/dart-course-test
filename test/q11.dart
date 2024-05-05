import 'package:test/test.dart';
import 'package:dart_course_test/q11/index.dart';

void main() {
  group('Min Max Product Function Tests', () {
    test('List [1, 2, 3, 4, 5]', () {
      expect(productOfMinMax([1, 2, 3, 4, 5]), equals(5));
    });
    test('List [5, 4, 3, 2, 1]', () {
      expect(productOfMinMax([5, 4, 3, 2, 1]), equals(5));
    });

    test('List [-5, -10, 5, 0]', () {
      expect(productOfMinMax([-5, -10, 5, 0]), equals(-50));
    });

    test('List [-10, -5, 0, 5]', () {
      expect(productOfMinMax([-10, -5, 0, 5]), equals(-50));
    });

    test('List [10, -5, 7, -2, 3]', () {
      expect(productOfMinMax([10, -5, 7, -2, 3]), equals(-50));
    });

    test('List [-5, 10, 3, -2, 7]', () {
      expect(productOfMinMax([-5, 10, 3, -2, 7]), equals(-50));
    });

    test('List [5, 5, 5, 5]', () {
      expect(productOfMinMax([5, 5, 5, 5]), equals(25));
    });

    test('List [-5, -5, -5, -5]', () {
      expect(productOfMinMax([-5, -5, -5, -5]), equals(25));
    });
  });
}
