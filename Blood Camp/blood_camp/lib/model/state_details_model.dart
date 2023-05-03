import 'package:dropdown_textfield/dropdown_textfield.dart';

class StateDetailsModel {
  StateDetailsData? stateDetailsData;
  bool? success;

  StateDetailsModel({this.stateDetailsData, this.success});

  StateDetailsModel.fromJson(Map<String, dynamic> json) {
    stateDetailsData = json['data'] != null
        ? new StateDetailsData.fromJson(json['data'])
        : null;
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.stateDetailsData != null) {
      data['data'] = this.stateDetailsData!.toJson();
    }
    data['success'] = this.success;
    return data;
  }
}

class StateDetailsData {
  List<States>? states;
  List<DropDownValueModel> dropDownState = [];

  StateDetailsData({this.states});

  StateDetailsData.fromJson(Map<String, dynamic> json) {
    if (json['states'] != null) {
      states = <States>[];
      json['states'].forEach((v) {
        states!.add(new States.fromJson(v));
        dropDownState.add(
          DropDownValueModel(name: v['label'], value: v['value']),
        );
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.states != null) {
      data['states'] = this.states!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class States {
  String? label;
  String? value;

  States({this.label, this.value});

  States.fromJson(Map<String, dynamic> json) {
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
