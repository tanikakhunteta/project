class BloodCampDetailsModel {
  bool? success;
  List<BloodCampDetailsData>? data;
  String? message;

  BloodCampDetailsModel({this.success, this.data, this.message});

  BloodCampDetailsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <BloodCampDetailsData>[];
      json['data'].forEach((v) {
        data!.add(new BloodCampDetailsData.fromJson(v));
      });
    }
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['message'] = this.message;
    return data;
  }
}

class BloodCampDetailsData {
  int? campId;
  String? campName;
  String? campAddress;
  String? contact;
  String? conductedBy;
  String? organizedBy;
  String? date;
  String? time;
  String? duration;
  String? pincode;
  String? campState;
  String? campDistrict;
  String? createdAt;
  String? updatedAt;

  BloodCampDetailsData(
      {this.campId,
      this.campName,
      this.campAddress,
      this.contact,
      this.conductedBy,
      this.organizedBy,
      this.date,
      this.time,
      this.duration,
      this.pincode,
      this.campState,
      this.campDistrict,
      this.createdAt,
      this.updatedAt});

  BloodCampDetailsData.fromJson(Map<String, dynamic> json) {
    campId = json['camp_id'];
    campName = json['camp_name'];
    campAddress = json['camp_address'];
    contact = json['contact'];
    conductedBy = json['conducted_by'];
    organizedBy = json['organized_by'];
    date = json['date'];
    time = json['time'];
    duration = json['duration'];
    pincode = json['pincode'];
    campState = json['camp_state'];
    campDistrict = json['camp_district'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['camp_id'] = this.campId;
    data['camp_name'] = this.campName;
    data['camp_address'] = this.campAddress;
    data['contact'] = this.contact;
    data['conducted_by'] = this.conductedBy;
    data['organized_by'] = this.organizedBy;
    data['date'] = this.date;
    data['time'] = this.time;
    data['duration'] = this.duration;
    data['pincode'] = this.pincode;
    data['camp_state'] = this.campState;
    data['camp_district'] = this.campDistrict;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}