## Challenge Title: "Above Average"

### Problem Statement:

Write a function that takes a list of integers and returns the count of numbers that are greater than the average of all numbers in the list.

### Function Signature:

```dart
int countGreaterThanAverage(List<int> numbers) {
  // Implementation goes here
}
```

### Input:

The function takes a list of `integers`, as input

### Output:

The function returns the count of numbers in the list that are greater than the average of all numbers.

### Examples:

```dart
countGreaterThanAverage([1, 2, 3, 4, 5]); // Output: 2 (4 and 5 are greater than the average, which is 3)
countGreaterThanAverage([10, 20, 30]);    // Output: 1 (only 30 is greater than the average, which is 20)
```