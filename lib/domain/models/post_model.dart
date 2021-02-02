class PostModel {
  String txtPost;
  DateTime datePost;
  String userNamePost;

  PostModel({this.txtPost, this.datePost, this.userNamePost});

  PostModel.fromJson(Map<String, dynamic> json) {
    txtPost = json['txtPost'];
    datePost = json['datePost'];
    userNamePost = json['userNamePost'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['txtPost'] = this.txtPost;
    data['datePost'] = this.datePost;
    data['userNamePost'] = this.userNamePost;
    return data;
  }
}