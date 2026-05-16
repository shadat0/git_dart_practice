class BankAccount{
  static String bankName = "Bangladesh Bank";
  static int totalAccounts = 0;

  String accountName;
  int accountNumber;
  double _balance = 0;

  BankAccount(this.accountName, this.accountNumber){
    totalAccounts++;
  }

  double get balance => _balance;
  set balance(double amount){
    if (amount>=0){_balance = amount;}
    else{
      print("Balance can not be negative");
    }
  }
//deposit with validation
  void showDeposit(double amount) {
    print("Account $accountNumber deposited $amount");
  }

  void deposit(double amount) {
  if (amount <= 0) {
    print("Deposit amount must be greater than 0.");
    return;
  }

  _balance += amount;
  showDeposit(amount);
  }


//withdraw with validation

  void showWithdraw(double amount) {
    print("$accountNumber withdrew $amount");
  }
  void withdraw(double amount) {
    if (amount <= 0) {
      print("Withdraw amount must be greater than 0.");
    return;
  }

    if (amount > _balance) {
      print("Not enough balance.");
    return;
  }

  _balance -= amount;
  showWithdraw(amount);
}

  //check balance
  void checkBalance() {
    print("Current balance: $_balance");
  }

//display info
  void displayAccountInfo() {
    print("Bank: $bankName");
    print("Account holder: $accountName");
    print("Account number: $accountNumber");
    print("Balance: $_balance");
  }
//static members
  static void showBankInfo() {
    print("Welcome to $bankName");
    print("Total accounts: $totalAccounts");
  }
}



//main function

void main(){
  print("-----------------------------------------\n");
  BankAccount A001 = BankAccount("Ahmed", 1040001);
  BankAccount A002 = BankAccount("Kabir", 1040002);

  A001.displayAccountInfo();
  print("");

  A002.displayAccountInfo();
  print("");

  print("-----------------------------------------\n");

  A001.deposit(100);
  A002.deposit(150);
  A001.withdraw(100);
  A001.checkBalance;

  // A001.deposit(0); : Deposit amount must be greater than 0
  // A002.withdraw(1000); : Not enough Balance

  print("-----------------------------------------\n");

    A001.displayAccountInfo();
  print("");

  A002.displayAccountInfo();
  print("");

  print("-----------------------------------------\n");
  BankAccount.showBankInfo();
  print("-----------------------------------------\n");

}

