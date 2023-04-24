import 'package:dio/dio.dart';
import 'package:regex_test/user_details.dart';

class NetworkApiCalls {
  final dio = Dio();
  Future<List<UserDetails>> getUserDetails() async {
    List<UserDetails> userData = [];
    Response response = await dio.get(
        'https://6438d4024660f26eb1a4210b.mockapi.io/userDetails/user_details');
    print(response.data.toString());
    if (response.data != null && response.data.isNotEmpty) {
      for (var element in response.data) {
        UserDetails userDetails = UserDetails.fromJson(element);
        userData.add(userDetails);
      }
    }
    return userData;
  }
}
