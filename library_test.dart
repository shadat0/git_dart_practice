class PrivateAccount {
  // String name;
  double _balance = 0;
  double get balance => _balance;

  set balance(double amount) {
    _balance = amount;
  }

  // PrivateAccount(this.name, this._balance);
  // PrivateAccount(double initial) : _balance = initial;

  // void deposit(double amount) {
  //   _balance = _balance + amount;
  // }

  // void withdraw(double amount) {
  //   if (amount > 0) _balance -= amount;
  // }
}

void main() {
  var acc = PrivateAccount();
  acc.balance = 200;

  // PrivateAccount account = PrivateAccount();
  // account.deposit(10);
  // print(account.getBalance());

  // PrivateAccount ahmed = PrivateAccount("Ahmed", 100.0);
  // ahmed.deposit(10.0);
  // print(ahmed.getBalance());
  // ahmed._balance = 1000; // this is not allowed because _balance is private
  // print(ahmed.getBalance());
}
