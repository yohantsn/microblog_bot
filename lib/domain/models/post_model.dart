import 'package:cloud_firestore/cloud_firestore.dart';

class PostModel {
  String txtPost;
  DateTime datePost;
  String userNamePost;
  String uid;

  PostModel({this.txtPost, this.datePost, this.userNamePost, this.uid});

  PostModel.fromJson(Map<String, dynamic> json) {
    txtPost = json['txtPost'];
    datePost = DateTime.fromMillisecondsSinceEpoch(json['datePost'].seconds * 1000);
    userNamePost = json['userNamePost'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['txtPost'] = this.txtPost;
    data['datePost'] = Timestamp.fromDate(this.datePost);
    data['userNamePost'] = this.userNamePost;
    data['uid'] = this.uid;
    return data;
  }
}