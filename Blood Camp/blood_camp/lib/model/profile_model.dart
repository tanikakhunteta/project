class UserProfileModel {
  bool? success;
  UserProfileModelData? userProfileData;
  String? message;

  UserProfileModel({this.success, this.userProfileData, this.message});

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    userProfileData = json['data'] != null
        ? new UserProfileModelData.fromJson(json['data'])
        : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.userProfileData != null) {
      data['data'] = this.userProfileData!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class UserProfileModelData {
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

  UserProfileModelData(
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

  UserProfileModelData.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['password'] = this.password;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['city'] = this.city;
    data['state'] = this.state;
    data['blood_group'] = this.bloodGroup;
    data['address'] = this.address;
    data['is_volunteer'] = this.isVolunteer;
    data['acc_type'] = this.accType;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['is_active'] = this.isActive;
    return data;
  }
}
