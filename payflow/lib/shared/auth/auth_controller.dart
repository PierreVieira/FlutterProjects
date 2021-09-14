import 'package:flutter/material.dart';
import 'package:payflow/shared/models/user_model.dart';
import 'package:payflow/shared/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  static const userKey = "user";

  UserModel? _user;

  UserModel get user => _user!;

  void setUser(BuildContext context, UserModel? user) {
    Routes route;
    if (user != null) {
      saveUser(user);
      _user = user;
      route = Routes.home;
    } else {
      route = Routes.login;
    }
    _navigateToNextScreen(context, route);
  }

  void _navigateToNextScreen(BuildContext context, Routes route) {
    Navigator.pushReplacementNamed(context, route.name);
  }

  Future<void> saveUser(UserModel user) async {
    final instance = await SharedPreferences.getInstance();
    await instance.setString(userKey, user.toJson());
  }

  Future<void> currentUser(BuildContext context) async {
    final instance = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 1));
    if (instance.containsKey(userKey)) {
      final json = instance.get(userKey) as String;
      setUser(context, UserModel.fromJson(json));
    } else {
      setUser(context, null);
    }
  }
}
