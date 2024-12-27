import 'package:flutter/foundation.dart';
import '../models/user.dart';
import '../data/mock_database.dart';

class AuthService extends ChangeNotifier {
  User? _currentUser;
  bool _isLoading = false;

  User? get currentUser => _currentUser;
  bool get isLoading => _isLoading;

  Future<bool> login(String username, String password, String role) async {
    _isLoading = true;
    notifyListeners();

    try {
      await Future.delayed(const Duration(seconds: 1)); // Simulate network delay
      
      // Check credentials
      final storedPassword = MockDatabase.credentials[username.toLowerCase()];
      if (storedPassword != password) {
        throw Exception('Invalid credentials');
      }

      // Find user
      final user = MockDatabase.users.firstWhere(
        (user) => user.name.toLowerCase() == username.toLowerCase() && user.role == role,
        orElse: () => throw Exception('User not found'),
      );

      _currentUser = user;
      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  void logout() {
    _currentUser = null;
    notifyListeners();
  }
}