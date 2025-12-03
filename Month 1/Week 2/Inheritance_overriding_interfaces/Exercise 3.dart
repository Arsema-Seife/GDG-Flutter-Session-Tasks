class PaymentMethod {
  void pay(double amount) {
    // To be implemented by subclasses
  }
}


class CreditCard implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid ${amount} ETB using Credit Card.");
  }
}


class Paypal implements PaymentMethod {
  @override
  void pay(double amount) {
    print("Paid ${amount} ETB using PayPal.");
  }
}

void main() {
  PaymentMethod cc = CreditCard();
  PaymentMethod pp = Paypal();

  cc.pay(150.0);
  pp.pay(75.0);
}
