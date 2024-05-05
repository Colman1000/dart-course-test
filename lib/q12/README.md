## Challenge Title: "Rectangle Class"

### Problem Statement:

Create a class called Rectangle to represent rectangles. The class should have properties for the length and width of the rectangle. Implement methods to calculate the area and perimeter of the rectangle.

### Function Signature:

```dart
class Rectangle {
  double length;
  double width;
  
  Rectangle(this.length, this.width);
  
  double calculateArea() {
    // Implementation goes here
  }
  
  double calculatePerimeter() {
    // Implementation goes here
  }
}
```

### Examples:

```dart
var rectangle1 = Rectangle(5, 3);
print(rectangle1.calculateArea());       // Output: 15.0
print(rectangle1.calculatePerimeter());  // Output: 16.0
```