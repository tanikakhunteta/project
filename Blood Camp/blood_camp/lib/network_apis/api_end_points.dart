class ApisEndPoint {
  //BASE_URL
  static String baseUrl =
      'https://h9l954ylcb.execute-api.ap-south-1.amazonaws.com/development/api/v1';

  //END_POINTS

  static String loginApi = "$baseUrl/auth/login";
  static String getUserData = "$baseUrl/user/get-user-data";
  static String updateUserData = "$baseUrl/user/update-user-profile";
  static String bloodAvailDetails = "$baseUrl/ngoProgram/blood-avail-details";
  static String bloodCampDetails = "$baseUrl/ngoProgram/blood-camp-details";
  static String allPostDetails = "$baseUrl/ngoActivity/all-posts";
  static String stateDetails = "$baseUrl/admin/states/all";
  static String districtDetails = "$baseUrl/admin/districts/all";
  static String getImageUploadUrl = "$baseUrl/user/pre-signed-url";
}
