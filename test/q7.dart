import 'package:test/test.dart';
import 'package:dart_course_test/q7/index.dart';


void main() {
  group('Find Second Smallest Function Tests', () {
    test('List [1, 3, 2, 4, 5]', () {
      expect(findSecondSmallest([1, 3, 2, 4, 5]), equals(2));
    
    });

    test('List [7, 5, 6, 4, 8, 9]', () {
      expect(findSecondSmallest([7, 5, 6, 4, 8, 9]), equals(5));
    });

    test('List [10, 10, 11, 12, 13]', () {
      expect(findSecondSmallest([10, 10, 11, 12, 13]), equals(10));
    });

    test('List [2, 3, 2, 4, 4]', () {
      expect(findSecondSmallest([2, 3, 2, 4, 4]), equals(2));
    });

    test('List [-2, -3, -1, -4, -5]', () {
      expect(findSecondSmallest([-2, -3, -1, -4, -5]), equals(-4));
    });

    test('List [-10, -20, -30, -40, -5]', () {
      expect(findSecondSmallest([-10, -20, -30, -40, -5]), equals(-30));
    });

    test('List[5, 3]', () {
      expect(findSecondSmallest([5, 3]), equals(5));
    });

    test('List [8, 10]', () {
      expect(findSecondSmallest([8, 10]), equals(10));
    });
  });
}