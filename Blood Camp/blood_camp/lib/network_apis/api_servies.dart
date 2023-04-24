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
}
