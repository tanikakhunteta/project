class AllPostDetailsModel {
  bool? success;
  Data? data;
  String? message;

  AllPostDetailsModel({this.success, this.data, this.message});

  AllPostDetailsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
    return data;
  }
}

class Data {
  List<NgoPosts>? ngoPosts;

  Data({this.ngoPosts});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['ngoPosts'] != null) {
      ngoPosts = <NgoPosts>[];
      json['ngoPosts'].forEach((v) {
        ngoPosts!.add(new NgoPosts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ngoPosts != null) {
      data['ngoPosts'] = this.ngoPosts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NgoPosts {
  int? postId;
  String? content;
  String? imageUrl;
  String? createdAt;
  String? updatedAt;
  Null? createdBy;
  bool? isVerified;

  NgoPosts(
      {this.postId,
      this.content,
      this.imageUrl,
      this.createdAt,
      this.updatedAt,
      this.createdBy,
      this.isVerified});

  NgoPosts.fromJson(Map<String, dynamic> json) {
    postId = json['post_id'];
    content = json['content'];
    imageUrl = json['image_url'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    createdBy = json['created_by'];
    isVerified = json['is_verified'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['post_id'] = this.postId;
    data['content'] = this.content;
    data['image_url'] = this.imageUrl;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['created_by'] = this.createdBy;
    data['is_verified'] = this.isVerified;
    return data;
  }
}
