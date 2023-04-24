class LoginAPIResponseModel {
  bool? success;
  String? message;
  Data? data;

  LoginAPIResponseModel({this.success, this.message, this.data});

  LoginAPIResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? username;
  String? password;
  String? phone;
  String? email;
  String? city;
  String? state;
  String? bloodGroup;
  String? address;
  var isVolunteer;
  String? accType;
  String? createdAt;
  String? updatedAt;
  bool? isActive;
  String? token;

  Data(
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
      this.isActive,
      this.token});

  Data.fromJson(Map<String, dynamic> json) {
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
    token = json['token'];
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
    data['token'] = this.token;
    return data;
  }
}
