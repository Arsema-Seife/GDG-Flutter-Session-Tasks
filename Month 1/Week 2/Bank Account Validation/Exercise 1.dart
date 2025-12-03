class InvalidAmountException implements Exception {
  final String message;
  InvalidAmountException(this.message);

  @override
  String toString() => "InvalidAmountException: $message";
}


void transferMoney(double amount) {
  if (amount <= 0) {
    throw InvalidAmountException("Amount must be greater than zero.");
  } else if (amount > 5000) {
    throw FormatException("Amount exceeds the limit of 5000.");
  } else {
    print("Transfer successful: \$${amount.toStringAsFixed(2)}");
  }
}

void main() {
  double amount = 6000; // Example amount to transfer

  try {
    transferMoney(amount);
  } on InvalidAmountException catch (e) {
    print(e); // Handle InvalidAmountException
  } on FormatException catch (e) {
    print("FormatException: ${e.message}"); // Handle FormatException
  } finally {
    print("Transaction check completed."); // Always runs
  }
}
