## Challenge Title: "3 and 5 Friends"

### Problem Statement:

Write a function that takes a list of integers and returns the sum of all numbers that are divisible by both `3` and `5`.

### Function Signature:

```dart
int sumDivisibleBy3And5(List<int> numbers) {
  // Implementation goes here
}
```

### Input:

The function takes a list of `integers`, as input

### Output:

The function returns the sum of all numbers in the list that are divisible by both 3 and 5

### Examples:

```dart
sumDivisibleBy3And5([3, 5, 9, 10, 15, 30, 39]); // Output: 45 (15 + 30)
sumDivisibleBy3And5([3, 4, 45]);                 // Output: 45
sumDivisibleBy3And5([1, 2, 4, 6]);              // Output: 0 (no numbers divisible by both 3 and 5)
```