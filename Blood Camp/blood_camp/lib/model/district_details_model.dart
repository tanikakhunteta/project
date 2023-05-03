import 'package:dropdown_textfield/dropdown_textfield.dart';

class DistrictDetailsModel {
  DistrictDetailsData? districtDetailsData;
  bool? success;

  DistrictDetailsModel({this.districtDetailsData, this.success});

  DistrictDetailsModel.fromJson(Map<String, dynamic> json) {
    districtDetailsData = json['data'] != null
        ? new DistrictDetailsData.fromJson(json['data'])
        : null;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.districtDetailsData != null) {
      data['data'] = this.districtDetailsData!.toJson();
    }
    data['success'] = this.success;
    return data;
  }
}

class DistrictDetailsData {
  List<Districts>? districts;
  List<DropDownValueModel> dropDownDistrict = [];

  DistrictDetailsData({this.districts});

  DistrictDetailsData.fromJson(Map<String, dynamic> json) {
    if (json['districts'] != null) {
      districts = <Districts>[];
      json['districts'].forEach((v) {
        districts!.add(new Districts.fromJson(v));
        dropDownDistrict.add(
          DropDownValueModel(name: v['label'], value: v['value']),
        );
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.districts != null) {
      data['districts'] = this.districts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Districts {
  String? label;
  String? value;

  Districts({this.label, this.value});

  Districts.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['value'] = this.value;
    return data;
  }
}
