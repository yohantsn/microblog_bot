import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mobx/mobx.dart';
import '../models/user_model.dart';

part 'base_content.g.dart';

class BaseContent = _BaseContent
    with _$BaseContent;

 abstract class _BaseContent with Store{
   _BaseContent({this.userModel, this.postSnapshot});

  @observable
  UserModel userModel;

  @observable
  DocumentSnapshot postSnapshot;

  @action
  void setUserModel(UserModel userModel) => this.userModel = userModel;

  @action
  void setPostSnapshot(DocumentSnapshot postSnapshot) => this.postSnapshot = postSnapshot;
}