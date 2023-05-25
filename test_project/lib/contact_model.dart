class ContactModel {
  String? name;
  String? contact;

  ContactModel({this.name, this.contact});

  ContactModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    contact = json['contact'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['contact'] = this.contact;
    return data;
  }
}