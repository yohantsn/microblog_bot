class UserModel {
  String nameUser;
  String emailUser;
  String uidUser;

  UserModel({this.nameUser, this.emailUser, this.uidUser});

  UserModel.fromJson(Map<String, dynamic> json) {
    nameUser = json['nameUser'];
    emailUser = json['emailUser'];
    uidUser = json['uidUser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nameUser'] = this.nameUser;
    data['emailUser'] = this.emailUser;
    data['uidUser'] = this.uidUser;
    return data;
  }
}