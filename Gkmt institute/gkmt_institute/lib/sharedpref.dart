import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static String tokenKey = "token";

  static Future<String> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(tokenKey) ?? "";
  }

  static Future<bool> setToken(String token) async {
    log(token);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.setString(tokenKey, token);
  }

  static Future<bool> clearToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.clear();
  }
}
