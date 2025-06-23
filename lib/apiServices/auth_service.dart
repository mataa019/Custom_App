import 'package:shared_preferences/shared_preferences.dart';
import '../Model/user.dart';

class AuthService {
  static const String _isLoggedInKey = 'is_logged_in';
  static const String _userKey = 'user_data';

  // Singleton pattern
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  // Check if user is logged in
  Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_isLoggedInKey) ?? false;
  }

  // Get current user
  Future<User?> getCurrentUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString(_userKey);
    if (userData != null) {
      // In a real app, you would parse JSON here
      return User(
        id: '1',
        name: 'John Doe',
        email: 'john@example.com',
        createdAt: DateTime.now(),
      );
    }
    return null;
  }

  // Login user
  Future<bool> login(String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    // Simple validation (in real app, validate with server)
    if (email.isNotEmpty && password.length >= 6) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_isLoggedInKey, true);
      await prefs.setString(_userKey, email);
      return true;
    }
    return false;
  }

  // Register user
  Future<bool> register(String name, String email, String password) async {
    // Simulate API call
    await Future.delayed(const Duration(seconds: 1));

    // Simple validation (in real app, validate with server)
    if (name.isNotEmpty && email.isNotEmpty && password.length >= 6) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_isLoggedInKey, true);
      await prefs.setString(_userKey, email);
      return true;
    }
    return false;
  }

  // Logout user
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_isLoggedInKey);
    await prefs.remove(_userKey);
  }
}
