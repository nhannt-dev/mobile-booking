import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioProvider {
  static const baseURL = 'https://appointment-aex1rme4m-nhannt-dev.vercel.app';
  Future<dynamic> getToken(String email, String password) async {
    try {
      var res = await Dio().post(
          '$baseURL/api/api/login',
          data: {'email': email, 'password': password});

      if (res.statusCode == 200 && res.data != '') {
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', res.data);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return e;
    }
  }

  Future<dynamic> getUser(String token) async {
    try {
      var user = await Dio().get('$baseURL/api/api/user',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      if (user.statusCode == 200 && user.data != '') {
        return json.encode(user.data);
      }
    } catch (error) {
      return error;
    }
  }

  Future<dynamic> registerUser(
      String username, String email, String password) async {
    try {
      var user = await Dio().post('$baseURL/api/api/register',
          data: {'name': username, 'email': email, 'password': password});
      if (user.statusCode == 201 && user.data != '') {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      return error;
    }
  }
}
