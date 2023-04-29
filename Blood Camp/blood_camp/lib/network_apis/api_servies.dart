import 'dart:developer';

import 'package:blood_camp/model/all_post_details_model.dart';
import 'package:blood_camp/model/blood_avail_details_model.dart';
import 'package:blood_camp/model/blood_camp_details_model.dart';
import 'package:blood_camp/model/profile_model.dart';
import 'package:blood_camp/network_apis/api_end_points.dart';
import 'package:blood_camp/shared_pref.dart';
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
    Map<String, String> headers = {"authorization": "Bearer $token"};

    try {
      Response response = await dio.get(ApisEndPoint.getUserData,
          options: Options(headers: headers));
      log(response.data.toString());
      if (response.data['success']) {
        log(response.data['data'].toString());
        return UserProfileModel.fromJson(response.data);
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  static Future<UserProfileModel?> updateProfileDetails(
      {String? name,
      String? email,
      String? city,
      String? state,
      String? bloodgroup}) async {
    Dio dio = Dio();
    String token = await SharedPref.getToken();
    Map<String, String> headers = {"authorization": "Bearer $token"};

    Response response = await dio.put(ApisEndPoint.updateUserData,
        options: Options(headers: headers),
        data: {
          "username": name,
          "password": 'dixit1234',
          "email": email,
          "city": city,
          "state": state,
          "blood_group": bloodgroup,
        });
    print(response.data);
    if (response.data['success']) {
      return UserProfileModel.fromJson(response.data);
    }
    return null;
  }

  static Future<BloodAvailDetailsModel?> getBloodAvailDetails({
    required String state,
    required String district,
    String? pincode,
    required String bloodGroup,
  }) async {
    Dio dio = Dio();
    String token = await SharedPref.getToken();
    Map<String, String> headers = {"authorization": "Bearer $token"};

    try {
      Response response = await dio.post(ApisEndPoint.bloodAvailDetails,
          options: Options(headers: headers),
          data: {
            "state": state.toLowerCase(),
            "district": district.toLowerCase(),
            if (pincode != null && pincode.isNotEmpty) "pincode": pincode,
            "blood_group": bloodGroup.toLowerCase(),
            "limit": "20",
            "offset": "0"
          });
      log(response.data.toString());
      if (response.data['success']) {
        BloodAvailDetailsModel bloodAvailDetailsModel =
            BloodAvailDetailsModel.fromJson(response.data);
        return bloodAvailDetailsModel;
      }
      return null;
    } catch (e) {
      log(e.toString());
      return null;
    }
  }

  static Future<BloodCampDetailsModel?> getBloodCampDetails(
      {required String state,
      required String district,
      required String startDate,
      String? endDate,
      String? pincode}) async {
    Dio dio = Dio();
    String token = await SharedPref.getToken();
    Map<String, String> headers = {"authorization": "Bearer $token"};

    Response response = await dio.post(ApisEndPoint.bloodCampDetails,
        options: Options(headers: headers),
        data: {
          "state": state.toLowerCase(),
          "district": district.toLowerCase(),
          if (pincode != null && pincode.isNotEmpty) "pincode": pincode,
          "start_date": startDate,
          if (endDate != null && endDate.isNotEmpty) "end_date": endDate,
          "limit": "20",
          "offset": "0"
        });
    print(response.data);
    if (response.data['success']) {
      BloodCampDetailsModel bloodCampDetailsModel =
          BloodCampDetailsModel.fromJson(response.data);

      return bloodCampDetailsModel;
    }
    return null;
  }

  static Future<AllPostDetailsModel?> getAllPostDetails() async {
    Dio dio = Dio();
    String token = await SharedPref.getToken();
    Map<String, String> headers = {"authorization": "Bearer $token"};
    Response response = await dio.get(
      ApisEndPoint.allPostDetails,
      options: Options(headers: headers),
    );
    print(response.data);
    if (response.data["success"]) {
      AllPostDetailsModel allPostDetailsModel =
          AllPostDetailsModel.fromJson(response.data);
      return allPostDetailsModel;
    }
    return null;
  }
}
