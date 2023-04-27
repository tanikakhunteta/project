class BloodAvailDetailsModel {
  bool? success;
  List<BloodAvailDetailsData>? data;
  String? message;

  BloodAvailDetailsModel({this.success, this.data, this.message});

  BloodAvailDetailsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <BloodAvailDetailsData>[];
      json['data'].forEach((v) {
        data!.add(new BloodAvailDetailsData.fromJson(v));
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

class BloodAvailDetailsData {
  int? srcId;
  String? srcType;
  String? srcName;
  String? category;
  String? srcContact;
  String? srcEmail;
  String? srcLicense;
  String? district;
  String? state;
  String? pincode;
  List<String>? availBloods;
  String? createdAt;
  String? updatedAt;
  String? address;
  bool? isActive;

  BloodAvailDetailsData(
      {this.srcId,
      this.srcType,
      this.srcName,
      this.category,
      this.srcContact,
      this.srcEmail,
      this.srcLicense,
      this.district,
      this.state,
      this.pincode,
      this.availBloods,
      this.createdAt,
      this.updatedAt,
      this.address,
      this.isActive});

  BloodAvailDetailsData.fromJson(Map<String, dynamic> json) {
    srcId = json['src_id'];
    srcType = json['src_type'];
    srcName = json['src_name'];
    category = json['category'];
    srcContact = json['src_contact'];
    srcEmail = json['src_email'];
    srcLicense = json['src_license'];
    district = json['district'];
    state = json['state'];
    pincode = json['pincode'];
    availBloods = json['avail_bloods'].cast<String>();
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    address = json['address'];
    isActive = json['is_active'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['src_id'] = this.srcId;
    data['src_type'] = this.srcType;
    data['src_name'] = this.srcName;
    data['category'] = this.category;
    data['src_contact'] = this.srcContact;
    data['src_email'] = this.srcEmail;
    data['src_license'] = this.srcLicense;
    data['district'] = this.district;
    data['state'] = this.state;
    data['pincode'] = this.pincode;
    data['avail_bloods'] = this.availBloods;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['address'] = this.address;
    data['is_active'] = this.isActive;
    return data;
  }
}