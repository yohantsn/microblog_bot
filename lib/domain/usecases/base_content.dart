import 'package:mobx/mobx.dart';
import '../models/user_model.dart';

class BaseContent{
  BaseContent({this.userModel});

  @observable
  UserModel userModel;

  @action
  void setUserModel(UserModel userModel) => this.userModel = userModel;

}