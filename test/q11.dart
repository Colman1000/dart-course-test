import 'package:test/test.dart';
import 'package:dart_course_test/q11/index.dart';



void main() {
  group('Min Max Product Function Tests', () {
    test('List with positive integers', () {
      expect(productOfMinMax([1, 2, 3, 4, 5]), equals(5));
      expect(productOfMinMax([5, 4, 3, 2, 1]), equals(5));
    });

    test('List with negative integers', () {
      expect(productOfMinMax([-10, -5, 0, 5]), equals(-50));
      expect(productOfMinMax([-5, -10, 5, 0]), equals(-50));
    });

    test('List with mix of positive and negative integers', () {
      expect(productOfMinMax([-5, 10, 3, -2, 7]), equals(-35));
      expect(productOfMinMax([10, -5, 7, -2, 3]), equals(-35));
    });

    test('List with duplicate numbers', () {
      expect(productOfMinMax([5, 5, 5, 5]), equals(25));
      expect(productOfMinMax([-5, -5, -5, -5]), equals(25));
    });

    test('List with one element', () {
      expect(productOfMinMax([5]), equals(25));
      expect(productOfMinMax([-5]), equals(25));
    });

    test('Empty list', () {
      expect(() => productOfMinMax([]), throwsArgumentError);
    });
  });
}
