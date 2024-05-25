import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/api_service.dart';

class UserViewModel extends ChangeNotifier {
  List<User> _users = [];
  bool _loading = false;
  String _error = '';

  List<User> get users => _users;
  bool get loading => _loading;
  String get error => _error;

  final ApiService apiService = ApiService();

  Future<void> fetchUsers() async {
    _loading = true;
    notifyListeners();

    try {
      _users = await apiService.fetchUsers();
      _error = '';
    } catch (e) {
      _error = 'An error occurred: $e';
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}