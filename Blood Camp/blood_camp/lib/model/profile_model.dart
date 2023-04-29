class UserProfileModel {
  bool? success;
  UserProfileData? userProfileData;
  String? message;

  UserProfileModel({this.success, this.userProfileData, this.message});

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    userProfileData =
        json['data'] != null ? new UserProfileData.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> userProfileData = new Map<String, dynamic>();
    userProfileData['success'] = this.success;
    if (this.userProfileData != null) {
      userProfileData['data'] = this.userProfileData!.toJson();
    }
    userProfileData['message'] = this.message;
    return userProfileData;
  }
}

class UserProfileData {
  UserDetails? userDetails;

  UserProfileData({this.userDetails});

  UserProfileData.fromJson(Map<String, dynamic> json) {
    userDetails = json['user_details'] != null
        ? new UserDetails.fromJson(json['user_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> userProfileData = new Map<String, dynamic>();
    if (this.userDetails != null) {
      userProfileData['user_details'] = this.userDetails!.toJson();
    }
    return userProfileData;
  }
}

class UserDetails {
  int? id;
  String? username;
  String? password;
  String? phone;
  String? email;
  String? city;
  String? state;
  String? bloodGroup;
  String? address;
  bool? isVolunteer;
  String? accType;
  String? createdAt;
  String? updatedAt;
  bool? isActive;

  UserDetails(
      {this.id,
      this.username,
      this.password,
      this.phone,
      this.email,
      this.city,
      this.state,
      this.bloodGroup,
      this.address,
      this.isVolunteer,
      this.accType,
      this.createdAt,
      this.updatedAt,
      this.isActive});

  UserDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    password = json['password'];
    phone = json['phone'];
    email = json['email'];
    city = json['city'];
    state = json['state'];
    bloodGroup = json['blood_group'];
    address = json['address'];
    isVolunteer = json['is_volunteer'];
    accType = json['acc_type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> userProfileData = new Map<String, dynamic>();
    userProfileData['id'] = this.id;
    userProfileData['username'] = this.username;
    userProfileData['password'] = this.password;
    userProfileData['phone'] = this.phone;
    userProfileData['email'] = this.email;
    userProfileData['city'] = this.city;
    userProfileData['state'] = this.state;
    userProfileData['blood_group'] = this.bloodGroup;
    userProfileData['address'] = this.address;
    userProfileData['is_volunteer'] = this.isVolunteer;
    userProfileData['acc_type'] = this.accType;
    userProfileData['created_at'] = this.createdAt;
    userProfileData['updated_at'] = this.updatedAt;
    userProfileData['is_active'] = this.isActive;
    return userProfileData;
  }
}
