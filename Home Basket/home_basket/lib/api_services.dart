import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:home_basket/api_end_point.dart';

import 'package:home_basket/jploft_model.dart';

class ApiService {
  static Future<JpLoftModel?> jpLoftDetails() async {
    String token =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMWY2NjU5ODc4M2QyZTU1MDcxZjA5NTA4N2YyNjEzMjcwYWMwYTdkYjg3N2ZiOWFmNjU2ODk2YmI4MzJkZWM2YzU0YmY2ODhjY2ZlNjZjYjYiLCJpYXQiOjE2ODIwNjMyOTQuODUyMTQ5LCJuYmYiOjE2ODIwNjMyOTQuODUyMTUyLCJleHAiOjE3MTM2ODU2OTQuODQzOTY1LCJzdWIiOiI5Iiwic2NvcGVzIjpbXX0.cONsPfzJ-ujMbeqT_cOst75Symc8YNj8m-bdKm88MMTgWE8cvUySOOyhbUG-gWevxT9kH6LO1U3XSQ3O1K_MPDh3DS9OwsjPFKrke1eQfvkqnnlEwM53rxAXPljpNj73kCHvGl4UUB17yv_fukSo_xyj46VPzv3n-4aDSEzq0sqXXW4EFFht7kFQ0u1otb3Rkxg2ZKl2JTt1DaPSvbHnc3Cqe-iYRQu6xRFiYmfwqJpVitu1cdumDpdXsiDhG-Lg-3TNgt9D2K93obQe2HnpJ8MtvRKiTtgbHO1oTjMB2L9Sg13lJy1WWtpWDp7fHAJhe_iMcH52-IvL0-D_9RpP1uuYJWhaz42fwMcMW2ag-NxBsTsrRnORP70iPRqwEhwW4gFIGPxNfU_-_EwufYtHyDf4yqd4P02BOk7Dodi3zk0meW7e2Jwnb661Jo8bleNdMkoI55pMZKfJuhipITC5VImu95eKc1omvQ2MXutFz-lf0KAuQcN_DNf_kNJCVT3ggPvjdCagLBusNa8lU0v4kcmJTdDlehRsERXfsBVR5fD43hOqUmAAaTMf075ZTp1udqbzu7mkc6V8APR3LkJW3-xV6VU7Vt8omkiYoeH5uvjrpZ-0r7kMGzIi87VXqQlvx0DbcldRmqyk8Pu0QdCjnf3XldG3rUFqFRHKsmwDxfY";
    Dio dio = Dio();
    Map<String, String> headers = {
      "authorization": "Bearer $token",
    };
    try {
      Response response = await dio.post(
        ApiEndPoint.jpLoft,
        data: {
          "booking_id": 108,
        },
        options: Options(
          headers: headers,
        ),
      );
      log(response.data.toString());
      JpLoftModel jpLoftModel = JpLoftModel.fromJson(response.data);
      return jpLoftModel;
    } catch (e) {
      log(e.toString());
    }
  }
}


