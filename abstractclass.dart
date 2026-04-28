abstract class paymentMethod {
  void charge(double amount);
}

class CreditCard extends paymentMethod {
  void charge(double amount) {
    print(
        "Charging credit card    amount : $amount,  charge is ${amount * 0.09}");
  }
}

class Applepay extends paymentMethod {
  void charge(double amount) {
    print(
        "Charging Applepay with amount: $amount,  charge is  ${amount * 0.08}");
  }
}

class DebitCard extends paymentMethod {
  void charge(double amount) {
    print(
        "Charging Debit Card with amount: $amount, charge  is  ${amount * 0.05}");
  }
}

class Bkash implements paymentMethod {
  int pin;

  Bkash(this.pin);

  @override
  void charge(double amount) {
    print(
        "Charging Bkash with amount: $amount, charge  is  ${amount * pin / 100}");
  }
}

void main() {
  CreditCard creditCard = CreditCard();
  Applepay applepay = Applepay();
  DebitCard debitCard = DebitCard();
  Bkash bkash = Bkash(2);

  creditCard.charge(100);
  applepay.charge(100);
  debitCard.charge(100);
  bkash.charge(100);
}
