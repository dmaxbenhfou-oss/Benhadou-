import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  // Saves expense data as a list of strings
  Future<void> saveExpenses(List<String> expenses) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('expenses', expenses);
  }

  // Retrieves expense data
  Future<List<String>> getExpenses() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('expenses') ?? [];
  }

  // Saves savings data as a list of strings
  Future<void> saveSavings(List<String> savings) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('savings', savings);
  }

  // Retrieves savings data
  Future<List<String>> getSavings() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('savings') ?? [];
  }
}