class BankAccount{
  double? _balance;


  // getter
  double get balance => _balance!;

  // setter
  set balance(double newBalance) {
    if (newBalance >= 0) {
      _balance = newBalance;
    } else {
      print('balance cannot be negative');
    }
  }


  // Method to display deposite info
  static void deposite(double _balance) {
    double deposite_res = _balance + _balance;
    print('Balance After deposite: ${deposite_res.toStringAsFixed(0)}');
  }

  // Method to display withdraw info
  static void withdraw(double _balance) {
    double deposite_res = _balance - _balance;
    print('Balance After withdraw: ${deposite_res.toStringAsFixed(0)}');

  }
}
