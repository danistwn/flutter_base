import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/AppSetting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLogged = false;
  bool _isLoading = false;

  bool get isLogged => _isLogged;
  bool get isLoading => _isLoading;

  void login(BuildContext context, String email, String password) async {
    _isLoading = true;
    await Future.delayed(Duration(milliseconds: 1000));
    if (email == "admin" && password == "123456") {
      final prefs = await SharedPreferences.getInstance();
      _isLogged = true;
      prefs.setBool('isLogged', _isLogged);
      notifyListeners();
    } else {
      print('email $email dan password $password');
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(AppSetting.AppName),
                content: Text('Invalid email or password!'),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('OK'))
                ],
              ));
    }

    _isLoading = false;
  }

  void logout() async {
    final prefs = await SharedPreferences.getInstance();
    _isLogged = false;
    prefs.setBool('isLogged', _isLogged);
    notifyListeners();
  }

  Future<void> checkAuth() async {
    final prefs = await SharedPreferences.getInstance();
    _isLogged = prefs.getBool('isLogged') ?? false;
    notifyListeners();
  }
}
