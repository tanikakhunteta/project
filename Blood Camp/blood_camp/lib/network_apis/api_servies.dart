import 'dart:convert';

import 'package:blood_camp/config/shared_pref.dart';
import 'package:blood_camp/model/profile_model.dart';
import 'package:blood_camp/network_apis/api_end_points.dart';
import 'package:dio/dio.dart';

import '../model/login_response_model.dart';

class ApiService {
  static Future<LoginAPIResponseModel?> login(
    String phone,
    String password,
  ) async {
    Dio dio = Dio();
    Response response = await dio.post(ApisEndPoint.loginApi,
        data: {'phone': phone, 'password': password, 'acc_type': 'user'});
    print(response.data);

    // if (response.statusCode == 201 || response.statusCode == 200) {

    // }

    if (response.data['success']) {
      return LoginAPIResponseModel.fromJson(response.data);
    } else {
      return null;
    }
  }

  static Future<UserProfileModel?> getProfileDetails() async {
    Dio dio = Dio();
    String token = await SharedPref.getToken();
    Map<String, String> headers = {'authorization': 'Bearer $token'};
    Response response = await dio.get(ApisEndPoint.getUserData,
        options: Options(headers: headers));
    print(response.data);
    if (response.data['success']) {
      return UserProfileModel.fromJson(response.data);
    } else {
      return null;
    }
  }

  static Future<UserProfileModel?> updateUserProfile(String name, String email,
      String city, String state, String bloodGroup, String password) async {
    Dio dio = Dio();
    String token = await SharedPref.getToken();
    Map<String, String> headers = {'authorization': 'Bearer $token'};
    Map<String, String> data = {
      "username": name,
      "email": email,
      "city": city,
      "state": state,
      "blood_group": bloodGroup,
      "address": "address",
      "password": password
    };
    print(data);
    print(headers);
    try {
      Response response = await dio.put(ApisEndPoint.updateUserData,
          data: data, options: Options(headers: headers));
      print(response.data);
      if (response.data['success']) {
        return UserProfileModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      print(e);
    }
  }
}
