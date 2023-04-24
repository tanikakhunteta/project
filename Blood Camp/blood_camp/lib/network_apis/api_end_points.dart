class ApisEndPoint {
  //BASE_URL
  static String baseUrl =
      'https://h9l954ylcb.execute-api.ap-south-1.amazonaws.com/development/api/v1';

  //END_POINTS

  static String loginApi = "$baseUrl/auth/login";
  static String getUserData = "$baseUrl/user/get-user-data";
  static String bloodAvailDetails = "$baseUrl/ngoProgram/blood-avail-details";
}
