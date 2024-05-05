## Challenge Title: "TorTiv Bank"

### Problem Statement:

Create a class called BankAccount to represent bank accounts. The class should have properties for the account holder's name and balance. Implement methods to deposit and withdraw money from the account.

### Function Signature:

```dart
class BankAccount {
  String accountHolder;
  double balance;
  
  BankAccount(this.accountHolder, this.balance);
  
  void deposit(double amount) {
    // Implementation goes here
  }
  
  void withdraw(double amount) {
    // Implementation goes here
  }
}

```

### Examples:

```dart
var account1 = BankAccount("Alice", 1000);
account1.deposit(500);
print(account1.balance);  // Output: 1500.0
account1.withdraw(200);
print(account1.balance);  // Output: 1300.0
```