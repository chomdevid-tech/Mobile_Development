class BankAccount {
  int accountID;
  String accountOwner;
  double _balance = 0;
  BankAccount({required this.accountID, required this.accountOwner});
  double get balance => _balance;
  //ADD
  void credit(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print("Credit account must be positive");
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print("withdraw must be positive");
    } else if (_balance - amount < 0) {
      print("Insufficient balance for withdrawal");
    } else {
      _balance -= amount;
    }
  }
}

class Bank {
  String? name;

  /// TODO
  List<BankAccount> accounts = [];
  Bank({required this.name});
  BankAccount createAccount(int accountID, String accountOwner) {
    for (var account in accounts) {
      if (account.accountID == accountID) {
        print("Account with ID $accountID already exits!");
        return account;
      }
    }
    BankAccount newAccount = BankAccount(
      accountID: accountID,
      accountOwner: accountOwner,
    );
    accounts.add(newAccount);
    return newAccount;
  }
}

void main() {
  Bank myBank = Bank(name: "CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }
  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
