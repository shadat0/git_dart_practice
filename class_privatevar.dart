class Account {
  String Customer;
  int balance;

  Account(this.Customer, this.balance);

  void deposit(int amount) {
    balance += amount;
    print("Deposited $amount. New balance: $balance");
  }

  void withdraw(int amount) {
    balance -= amount;
    print("Withdrawn $amount. New balance: $balance");
  }

  void getBalance() {
    print("Balance: $balance");
  }
}

void main() {
  Account John01 = Account("John", 100);
  John01.getBalance();
  John01.deposit(50);
  John01.withdraw(20);
  John01.getBalance();
}
