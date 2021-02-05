import 'package:mobx/mobx.dart';
import '../models/user_model.dart';

part 'base_content.g.dart';

class BaseContent = _BaseContent
    with _$BaseContent;

 abstract class _BaseContent with Store{
   _BaseContent({this.userModel});

  @observable
  UserModel userModel;

  @action
  void setUserModel(UserModel userModel) => this.userModel = userModel;

}