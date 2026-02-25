import 'package:flutter/foundation.dart';

class ExpenseProvider with ChangeNotifier {
  List<double> _expenses = [];
  List<double> _savings = [];

  List<double> get expenses => _expenses;
  List<double> get savings => _savings;

  void addExpense(double amount) {
    _expenses.add(amount);
    notifyListeners();
  }

  void addSavings(double amount) {
    _savings.add(amount);
    notifyListeners();
  }

  double get totalExpenses => _expenses.fold(0, (sum, item) => sum + item);
  double get totalSavings => _savings.fold(0, (sum, item) => sum + item);
}