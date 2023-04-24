import 'package:regex_test/network_api.dart';

class UserDetails {
  String? firstName;
  String? lastName;
  String? email;

  UserDetails({this.firstName, this.lastName, this.email});

  UserDetails.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    return data;
  }
}
