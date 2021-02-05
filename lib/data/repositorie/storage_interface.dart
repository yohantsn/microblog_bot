import 'package:micro_blog_bot/domain/models/user_model.dart';

abstract class IStorage{
  Future<void> saveUser({UserModel userModel});
  Future<UserModel> getUserModel({String uid});
}