import 'package:test/test.dart';
import 'package:dart_course_test/q7/index.dart';


void main() {
  group('Find Second Smallest Function Tests', () {
    test('List with unique numbers', () {
      expect(findSecondSmallest([1, 3, 2, 4, 5]), equals(2));
      expect(findSecondSmallest([7, 5, 6, 4, 8, 9]), equals(5));
    });

    test('List with duplicate numbers', () {
      expect(findSecondSmallest([10, 10, 11, 12, 13]), equals(10));
      expect(findSecondSmallest([2, 3, 2, 4, 4]), equals(3));
    });

    test('List with negative numbers', () {
      expect(findSecondSmallest([-2, -3, -1, -4, -5]), equals(-4));
      expect(findSecondSmallest([-10, -20, -30, -40, -5]), equals(-30));
    });

    test('List with only two elements', () {
      expect(findSecondSmallest([5, 3]), equals(5));
      expect(findSecondSmallest([8, 10]), equals(10));
    });

    test('List with less than two elements', () {
      expect(() => findSecondSmallest([1]), throwsArgumentError);
      expect(() => findSecondSmallest([]), throwsArgumentError);
    });
  });
}