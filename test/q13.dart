import 'package:test/test.dart';
import 'package:dart_course_test/q13/index.dart';

void main() {
  group('BankAccount Class Tests', () {
    test('Deposit money', () {
      var account = BankAccount("Alice", 1000);
      account.deposit(500);
      expect(account.balance, equals(1500.0));
    });

    test('Withdraw money', () {
      var account = BankAccount("Alice", 1000);
      account.withdraw(200);
      expect(account.balance, equals(800.0));
    });

    test('Withdraw more money than balance', () {
      var account = BankAccount("Alice", 1000);
      account.withdraw(1200);
      expect(account.balance, equals(-200.0)); // Balance can go negative
    });

    test('Deposit negative amount', () {
      var account = BankAccount("Alice", 1000);
      account.deposit(-500);
      expect(account.balance, equals(1000.0)); // Balance remains unchanged
    });

    test('Withdraw negative amount', () {
      var account = BankAccount("Alice", 1000);
      account.withdraw(-200);
      expect(account.balance, equals(1000.0)); // Balance remains unchanged
    });

    test('Withdraw zero amount', () {
      var account = BankAccount("Alice", 1000);
      account.withdraw(0);
      expect(account.balance, equals(1000.0)); // Balance remains unchanged
    });

    test('Deposit zero amount', () {
      var account = BankAccount("Alice", 1000);
      account.deposit(0);
      expect(account.balance, equals(1000.0)); // Balance remains unchanged
    });
  });
}
